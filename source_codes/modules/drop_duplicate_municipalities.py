import psycopg2 as pg
from sqlalchemy import create_engine, MetaData, Table
import pandas.io.sql as psql
import pandas as pd

def drop_duplicates(df_gku_muns, df_dmo_muns):
    df_gku_muns = df_gku_muns.assign(lower_mun_name=[x.lower() for x in df_gku_muns['Názov_obce']])
    #print(df_gku_muns)
    for i, munnm in zip(df_gku_muns.index, df_gku_muns['lower_mun_name']):
        if 'bratislava' in munnm:
            df_gku_muns.loc[i, 'lower_mun_name'] = 'bratislava'
        elif 'košice' in munnm:
            df_gku_muns.loc[i, 'lower_mun_name'] = 'košice'

    df_merged = pd.merge(df_dmo_muns, df_gku_muns, left_on = 'municipality_name', right_on = 'lower_mun_name')
    df_merged['mun_duplicity'] = df_merged.duplicated(subset=['dmo_id', 'lower_mun_name'],keep=False)
    #print(df_merged)
    #ke and ba treated for delete loop
    
    df_merged=df_merged.drop(['level_0'], axis=1)
    df_merged = df_merged.reset_index()
    #print(df_merged.columns)
    #print(df_merged.query('mun_duplicity==1'))
    new_l = []
    for i, dmo_id, member_id, lower_mun_name, region, mun_duplicity in zip(df_merged.index, df_merged['dmo_id'], df_merged['member_id'], df_merged['lower_mun_name'], df_merged['Kraj'], df_merged['mun_duplicity']):
        print(i, dmo_id, member_id, lower_mun_name, mun_duplicity)
        if mun_duplicity == False or lower_mun_name in ['bratislava', 'košice']:
            df_merged.loc[i, 'delete'] = 0
        else:
            new_l.append(dmo_id)
            #print(dmo_id, member_id, lower_mun_name, region)
            df_reg = df_merged.query('dmo_id ==' + str(dmo_id)).groupby(['dmo_id', 'Kraj']).size().to_frame('n').reset_index()
            df_reg = df_reg.sort_values('n', ascending=False).drop_duplicates('dmo_id').sort_index()
            df_reg = df_reg.reset_index()
            #print(df_reg['Kraj'][0])
            if region in df_reg['Kraj'][0]:
                #print(dmo_id, member_id, lower_mun_name, region, 'Keep')
                df_merged.loc[i, 'delete'] = 0
                print(dmo_id, member_id, lower_mun_name, mun_duplicity)
            elif region == 'Bratislavský kraj' and lower_mun_name == 'rohožník':
                df_merged.loc[i, 'delete'] = 0
            else:
                #print(dmo_id, member_id, lower_mun_name, region, 'Delete')
                df_merged.loc[i, 'delete'] = 1
    print(df_merged.columns)
    df_rejoin = pd.merge(df_dmo_muns, df_merged.query('delete ==0'), how = 'left', on = ['dmo_id', 'dmo_name', 'member_id'])

    #nnl = pd.Series(new_l).drop_duplicates().tolist()
    #dropping the most distant (decision made based on map...more distant from destination center is deleted)
    #TO DO automate on db side via st_distance from st_center(st_union) where count=1...or just create loop envoking st_dist from start of note
    df_rejoin = df_rejoin.drop(df_rejoin.query('dmo_id == 6 and member_id == "14" and Kód_obce == "SK0326511706"').index)
    df_rejoin = df_rejoin.drop(df_rejoin.query('dmo_id == 10 and member_id == "9" and Kód_obce == "SK0315507393"').index)
    df_rejoin = df_rejoin.drop(df_rejoin.query('dmo_id == 15 and member_id == "9" and Kód_obce == "SK0329557765"').index)
    df_rejoin = df_rejoin.drop(df_rejoin.query('dmo_id == 18 and member_id == "12" and Kód_obce == "SK0411519189"').index)
    df_rejoin = df_rejoin.drop(df_rejoin.query('dmo_id == 22 and member_id == "22" and Kód_obce == "SK032C517127"').index)
    df_rejoin = df_rejoin.drop(df_rejoin.query('dmo_id == 27 and member_id == "13" and Kód_obce == "SK0217556653"').index)

    #drop unnecessary columns
    df_out = df_rejoin[['dmo_id', 'member_id', 'Kód_obce']]

    
    
    df_dmo_muns_w_susr_codes = df_out
    #return df_merged
    return df_dmo_muns_w_susr_codes


