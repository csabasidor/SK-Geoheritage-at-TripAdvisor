from sys import path
path.append('..//modules')
path.append('..//dumps//reg_dmo_pdf')




def clean_municipality_names(df_in):
    for i, municipality_name in zip(df_in.index, df_in['municipality_name']):
        print(i, municipality_name)
        if ' - ' in municipality_name:
            df_in.loc[i, 'municipality_name'] = municipality_name.replace(' - ', '-')
        elif ' – ' in municipality_name:
            df_in.loc[i, 'municipality_name'] = municipality_name.replace(' – ', '-')
        elif ' –' in municipality_name:
            df_in.loc[i, 'municipality_name'] = municipality_name.replace(' –', '-')
        elif ',' in municipality_name:
            df_in.loc[i, 'municipality_name'] = municipality_name.replace(',', '')
        elif 'n/' in municipality_name:
            df_in.loc[i, 'municipality_name'] = municipality_name.replace('n/', 'nad ')
        elif municipality_name == 'veľký ďúr':
            df_in.loc[i, 'municipality_name'] = 'veľký ďur'
    df_dmo_boundaries = df_in
    df_dmo_boundaries.reset_index()
    return df_dmo_boundaries

