#!/usr/bin/env python3 
from sys import path
path.append('..//modules')
from modules.db_connector import *
import pandas as pd
pd.set_option('display.max_columns', 500)
pd.set_option('display.width', 1500)
import pandas.io.sql as psql
import psycopg2 as pg
from sqlalchemy import create_engine, MetaData, Table, text
from unidecode import unidecode


        







      

def get_sopsr_id_mchu_cat1(df_in):
    for i, id in zip(df_in.index, df_in['id']):
        with engine.connect() as con1:
            q = 'SELECT sk_sgs_vgl_sguds.id, sk_mchu_sps_sopsr.gml_id FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_mchu_sps_sopsr WHERE sk_sgs_vgl_sguds.id = ' + str(id) + 'AND sk_mchu_sps_sopsr."CATEGORY" = 1 AND st_within(st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_mchu_sps_sopsr.geom, 4326 ));'
            df_out = pd.read_sql(q, con=con1)
            #print(df_out)
            if not df_out.empty:
                print(id, df_out['gml_id'].iat[0])
                #df_out.to_sql('sk_sgs_vgl_mchu_sps_ids', engine, schema='gtlab', if_exists='append')
                update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET gml_id_cat1_sk_mchu_sps_sopsr ='" + str(df_out['gml_id'].iat[0]) +"' WHERE id = '"+ str(id) +"'; "
                con1.execute(text(update_stmt))
                con1.commit()
                con1.close()
            else:
                print(id, "nothing")
                pass

def get_sopsr_id_mchu_cat2(df_in):
    for i, id in zip(df_in.index, df_in['id']):
        with engine.connect() as con1:
            q = 'SELECT sk_sgs_vgl_sguds.id, sk_mchu_sps_sopsr.gml_id FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_mchu_sps_sopsr WHERE sk_sgs_vgl_sguds.id = ' + str(id) + 'AND sk_mchu_sps_sopsr."CATEGORY" = 2 AND st_within(st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_mchu_sps_sopsr.geom, 4326 ));'
            df_out = pd.read_sql(q, con=con1)
            #print(df_out)
            if not df_out.empty:
                print(id, df_out['gml_id'].iat[0])
                #df_out.to_sql('sk_sgs_vgl_mchu_sps_ids', engine, schema='gtlab', if_exists='append')
                update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET gml_id_cat2_sk_mchu_sps_sopsr ='" + str(df_out['gml_id'].iat[0]) +"' WHERE id = '"+ str(id) +"'; "
                con1.execute(text(update_stmt))
                con1.commit()
                con1.close()
            else:
                print(id)
                pass

def get_sopsr_id_mchu_cat3(df_in):
    for i, id in zip(df_in.index, df_in['id']):
        with engine.connect() as con1:
            q = 'SELECT sk_sgs_vgl_sguds.id, sk_mchu_sps_sopsr.gml_id FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_mchu_sps_sopsr WHERE sk_sgs_vgl_sguds.id = ' + str(id) + 'AND sk_mchu_sps_sopsr."CATEGORY" = 3 AND st_within(st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_mchu_sps_sopsr.geom, 4326 ));'
            df_out = pd.read_sql(q, con=con1)
            #print(df_out)
            if not df_out.empty:
                print(id, df_out['gml_id'].iat[0])
                #df_out.to_sql('sk_sgs_vgl_mchu_sps_ids', engine, schema='gtlab', if_exists='append')
                update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET gml_id_cat3_sk_mchu_sps_sopsr ='" + str(df_out['gml_id'].iat[0]) +"' WHERE id = '"+ str(id) +"'; "
                con1.execute(text(update_stmt))
                con1.commit()
                con1.close()
            else:
                print(id)
                pass



def get_sopsr_id_mchu_cat4(df_in):
    for i, id in zip(df_in.index, df_in['id']):
        with engine.connect() as con1:
            q = 'SELECT sk_sgs_vgl_sguds.id, sk_mchu_sps_sopsr.gml_id FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_mchu_sps_sopsr WHERE sk_sgs_vgl_sguds.id = ' + str(id) + 'AND sk_mchu_sps_sopsr."CATEGORY" = 4 AND st_within(st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_mchu_sps_sopsr.geom, 4326 ));'
            df_out = pd.read_sql(q, con=con1)
            #print(df_out)
            if not df_out.empty:
                print(id, df_out['gml_id'].iat[0])
                #df_out.to_sql('sk_sgs_vgl_mchu_sps_ids', engine, schema='gtlab', if_exists='append')
                update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET gml_id_cat4_sk_mchu_sps_sopsr ='" + str(df_out['gml_id'].iat[0]) +"' WHERE id = '"+ str(id) +"'; "
                con1.execute(text(update_stmt))
                con1.commit()
                con1.close()
            else:
                print(id)
                pass

def get_sopsr_id_mchu_cat5(df_in):
    for i, id in zip(df_in.index, df_in['id']):
        with engine.connect() as con1:
            q = 'SELECT sk_sgs_vgl_sguds.id, sk_mchu_sps_sopsr.gml_id FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_mchu_sps_sopsr WHERE sk_sgs_vgl_sguds.id = ' + str(id) + 'AND sk_mchu_sps_sopsr."CATEGORY" = 5 AND st_within(st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_mchu_sps_sopsr.geom, 4326 ));'
            df_out = pd.read_sql(q, con=con1)
            #print(df_out)
            if not df_out.empty:
                print(id, df_out['gml_id'].iat[0])
                #df_out.to_sql('sk_sgs_vgl_mchu_sps_ids', engine, schema='gtlab', if_exists='append')
                update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET gml_id_cat5_sk_mchu_sps_sopsr ='" + str(df_out['gml_id'].iat[0]) +"' WHERE id = '"+ str(id) +"'; "
                con1.execute(text(update_stmt))
                con1.commit()
                con1.close()
            else:
                print(id)
                pass

def get_sopsr_id_mchu_cat6(df_in):
    for i, id in zip(df_in.index, df_in['id']):
        with engine.connect() as con1:
            q = 'SELECT sk_sgs_vgl_sguds.id, sk_mchu_sps_sopsr.gml_id FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_mchu_sps_sopsr WHERE sk_sgs_vgl_sguds.id = ' + str(id) + 'AND sk_mchu_sps_sopsr."CATEGORY" = 6 AND st_within(st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_mchu_sps_sopsr.geom, 4326 ));'
            df_out = pd.read_sql(q, con=con1)
            #print(df_out)
            if not df_out.empty:
                print(id, df_out['gml_id'].iat[0])
                #df_out.to_sql('sk_sgs_vgl_mchu_sps_ids', engine, schema='gtlab', if_exists='append')
                update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET gml_id_cat6_sk_mchu_sps_sopsr ='" + str(df_out['gml_id'].iat[0]) +"' WHERE id = '"+ str(id) +"'; "
                con1.execute(text(update_stmt))
                con1.commit()
                con1.close()
            else:
                print(id)
                pass

def get_sopsr_id_mchu_cat7(df_in):
    for i, id in zip(df_in.index, df_in['id']):
        with engine.connect() as con1:
            q = 'SELECT sk_sgs_vgl_sguds.id, sk_mchu_sps_sopsr.gml_id FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_mchu_sps_sopsr WHERE sk_sgs_vgl_sguds.id = ' + str(id) + 'AND sk_mchu_sps_sopsr."CATEGORY" = 7 AND st_within(st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_mchu_sps_sopsr.geom, 4326 ));'
            df_out = pd.read_sql(q, con=con1)
            #print(df_out)
            if not df_out.empty:
                print(id, df_out['gml_id'].iat[0])
                #df_out.to_sql('sk_sgs_vgl_mchu_sps_ids', engine, schema='gtlab', if_exists='append')
                update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET gml_id_cat7_sk_mchu_sps_sopsr ='" + str(df_out['gml_id'].iat[0]) +"' WHERE id = '"+ str(id) +"'; "
                con1.execute(text(update_stmt))
                con1.commit()
                con1.close()
            else:
                print(id)
                pass

def get_sopsr_id_vchu_cat8(df_in):
    for i, id in zip(df_in.index, df_in['id']):
        with engine.connect() as con1:
            q = 'SELECT sk_sgs_vgl_sguds.id, sk_vchu_lps_sopsr."SITEID" FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_vchu_lps_sopsr WHERE sk_sgs_vgl_sguds.id = ' + str(id) + 'AND sk_vchu_lps_sopsr."CATEGORY" = 8 AND st_within(st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_vchu_lps_sopsr.geom, 4326 ));'
            df_out = pd.read_sql(q, con=con1)
            #print(df_out)
            if not df_out.empty:
                print(id, df_out['SITEID'].iat[0])
                
                update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET siteid_cat8_sk_vchu_lps_sopsr ='" + str(df_out['SITEID'].iat[0]) +"' WHERE id = '"+ str(id) +"'; "
                con1.execute(text(update_stmt))
                con1.commit()
                con1.close()
            else:
                print(id)
                pass            

def get_sopsr_id_vchu_cat9(df_in):
    for i, id in zip(df_in.index, df_in['id']):
        with engine.connect() as con1:
            q = 'SELECT sk_sgs_vgl_sguds.id, sk_vchu_lps_sopsr."SITEID" FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_vchu_lps_sopsr WHERE sk_sgs_vgl_sguds.id = ' + str(id) + 'AND sk_vchu_lps_sopsr."CATEGORY" = 9 AND st_within(st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_vchu_lps_sopsr.geom, 4326 ));'
            df_out = pd.read_sql(q, con=con1)
            #print(df_out)
            if not df_out.empty:
                print(id, df_out['SITEID'].iat[0])
                
                update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET siteid_cat9_sk_vchu_lps_sopsr ='" + str(df_out['SITEID'].iat[0]) +"' WHERE id = '"+ str(id) +"'; "
                con1.execute(text(update_stmt))
                con1.commit()
                con1.close()
            else:
                print(id)
                pass      

def get_sopsr_id_vchu_cat10(df_in):
    for i, id in zip(df_in.index, df_in['id']):
        with engine.connect() as con1:
            q = 'SELECT sk_sgs_vgl_sguds.id, sk_vchu_lps_sopsr."SITEID" FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_vchu_lps_sopsr WHERE sk_sgs_vgl_sguds.id = ' + str(id) + 'AND sk_vchu_lps_sopsr."CATEGORY" = 10 AND st_within(st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_vchu_lps_sopsr.geom, 4326 ));'
            df_out = pd.read_sql(q, con=con1)
            #print(df_out)
            if not df_out.empty:
                print(id, df_out['SITEID'].iat[0])
                
                update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET siteid_cat10_sk_vchu_lps_sopsr ='" + str(df_out['SITEID'].iat[0]) +"' WHERE id = '"+ str(id) +"'; "
                con1.execute(text(update_stmt))
                con1.commit()
                con1.close()
            else:
                print(id)
                pass      
                
def get_sopsr_id_np_w_pz(df_in):
    for i, id in zip(df_in.index, df_in['id']):
        with engine.connect() as con1:
            q = 'SELECT sk_sgs_vgl_sguds.id, sk_np_w_pz_sopsr.gml_id FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_np_w_pz_sopsr WHERE sk_sgs_vgl_sguds.id = ' + str(id) + ' AND st_within(st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_np_w_pz_sopsr.geom, 4326 ));'
            df_out = pd.read_sql(q, con=con1)
            #print(df_out)
            if not df_out.empty:
                print(id, df_out['gml_id'].iat[0])
                
                update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET gml_id_sk_np_w_pz_sopsr ='" + str(df_out['gml_id'].iat[0]) +"' WHERE id = '"+ str(id) +"'; "
                con1.execute(text(update_stmt))
                con1.commit()
                con1.close()
            else:
                print(id)
                pass            

  




def get_sopsr_id_uev_teui(df_in):
    for i, id in zip(df_in.index, df_in['id']):
        with engine.connect() as con1:
            q = 'SELECT sk_sgs_vgl_sguds.id, sk_uev_teui_sopsr."SITEID" FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_uev_teui_sopsr WHERE sk_sgs_vgl_sguds.id = ' + str(id) + ' AND st_within(st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_uev_teui_sopsr.geom, 4326 ));'
            df_out = pd.read_sql(q, con=con1)
            #print(df_out)
            if not df_out.empty:
                print(id, df_out['SITEID'].iat[0])
                
                update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET siteid_sk_uev_teui_sopsr ='" + str(df_out['SITEID'].iat[0]) +"' WHERE id = '"+ str(id) +"'; "
                con1.execute(text(update_stmt))
                con1.commit()
                con1.close()
            else:
                print(id)
                pass      





def get_sopsr_id_chvu_bpa(df_in):
    for i, id in zip(df_in.index, df_in['id']):
        with engine.connect() as con1:
            q = 'SELECT sk_sgs_vgl_sguds.id, sk_chvu_bpa_sopsr."SITEID" FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_chvu_bpa_sopsr WHERE sk_sgs_vgl_sguds.id = ' + str(id) + ' AND st_within(st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_chvu_bpa_sopsr.geom, 4326 ));'
            df_out = pd.read_sql(q, con=con1)
            #print(df_out)
            if not df_out.empty:
                print(id, df_out['SITEID'].iat[0])
                
                update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET siteid_sk_chvu_bpa_sopsr ='" + str(df_out['SITEID'].iat[0]) +"' WHERE id = '"+ str(id) +"'; "
                con1.execute(text(update_stmt))
                con1.commit()
                con1.close()
            else:
                print(id)
                pass 


#https://stackoverflow.com/questions/8897593/how-to-compute-the-similarity-between-two-text-documents
import nltk, string
from sklearn.feature_extraction.text import TfidfVectorizer

#nltk.download('punkt') # if necessary...


stemmer = nltk.stem.porter.PorterStemmer()
remove_punctuation_map = dict((ord(char), None) for char in string.punctuation)

def stem_tokens(tokens):
    return [stemmer.stem(item) for item in tokens]

'''remove punctuation, lowercase, stem'''
def normalize(text):
    return stem_tokens(nltk.word_tokenize(text.lower().translate(remove_punctuation_map)))

#vectorizer = TfidfVectorizer(tokenizer=normalize, stop_words='english')
vectorizer = TfidfVectorizer(tokenizer=normalize)

def cosine_sim(text1, text2):
    tfidf = vectorizer.fit_transform([text1, text2])
    return ((tfidf * tfidf.T).A)[0,1]

#https://stackoverflow.com/questions/8897593/how-to-compute-the-similarity-between-two-text-documents

import string

def get_sospr_mchu_by_name_penetration(df1, df2):
    for ix, vgl_id, nm_vgl, in zip(df1.index, df1['id'], df1['lokalita']):
        for iy, mchu_id, nm_mchu, cat_sopsr in zip(df2.index, df2['gml_id'],df2['nm_en'],df2['CATEGORY']):
            if unidecode(nm_vgl) == nm_mchu:
                with engine.connect() as con1:
                    update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET nmskbnm_prob="+ str(cosine_sim(unidecode(nm_vgl), nm_mchu)) + ", category_name_sk_mchu_sps_sopsr_by_name = '"+str(cat_sopsr) + "', gmlid_sk_mchu_sps_sopsr_by_name ='" + mchu_id +"', name_sk_mchu_sps_sopsr_by_name ='"+ nm_mchu + "' WHERE id = '"+ str(vgl_id) +"'; "
                    con1.execute(text(update_stmt))
                    con1.commit()
                    con1.close()
                print("CASE 1", ix,  nm_vgl, iy, nm_mchu, str(cosine_sim(unidecode(nm_vgl), nm_mchu)))
                continue
            if unidecode(nm_vgl) != nm_mchu and any(pnct in nm_vgl for pnct in string.punctuation):
                for ele in nm_vgl:
                    if ele in string.punctuation:
                        for part in nm_vgl.split(ele):
                            if cosine_sim(unidecode(part), nm_mchu) > 0.70:
                                with engine.connect() as con1:
                                    update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET nmskbnm_prob="+ str(cosine_sim(unidecode(part), nm_mchu)) + ", category_name_sk_mchu_sps_sopsr_by_name = '"+str(cat_sopsr) + "', gmlid_sk_mchu_sps_sopsr_by_name ='" + mchu_id +"', name_sk_mchu_sps_sopsr_by_name ='"+ nm_mchu + "' WHERE id = '"+ str(vgl_id) +"'; "
                                    con1.execute(text(update_stmt))
                                    con1.commit()
                                    con1.close()
                                print("CASE2", ix,  nm_vgl, iy, nm_mchu, cosine_sim(unidecode(part), nm_mchu))
            if unidecode(nm_vgl) != nm_mchu and all(pnct not in nm_vgl for pnct in string.punctuation):
                if cosine_sim(nm_vgl, nm_mchu) > 0.70:
                    with engine.connect() as con1:
                        update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET nmskbnm_prob="+ str(cosine_sim(unidecode(nm_vgl), nm_mchu)) + ", category_name_sk_mchu_sps_sopsr_by_name = '"+str(cat_sopsr) + "', gmlid_sk_mchu_sps_sopsr_by_name ='" + mchu_id +"', name_sk_mchu_sps_sopsr_by_name ='"+ nm_mchu + "' WHERE id = '"+ str(vgl_id) +"'; "
                        con1.execute(text(update_stmt))
                        con1.commit()
                        con1.close()
                    print("99999 CASE ", ix,  nm_vgl, iy, nm_mchu, str(cosine_sim(unidecode(nm_vgl), nm_mchu)))

             
def measure_dist_vgl_mchu_by_name():
    with engine.connect() as con1:
        update_stmt = """
        UPDATE gtlab.sk_sgs_vgl_sguds SET gmlid_sk_mchu_sps_sopsr_by_name = NULL, name_sk_mchu_sps_sopsr_by_name =NULL, category_name_sk_mchu_sps_sopsr_by_name = NULL 
from 
(
with foo as (
select sk_sgs_vgl_sguds.objectid, sk_sgs_vgl_sguds.gmlid_sk_mchu_sps_sopsr_by_name, sk_sgs_vgl_sguds.lokalita, sk_sgs_vgl_sguds.name_sk_mchu_sps_sopsr_by_name, sk_sgs_vgl_sguds.nmskbnm_prob, sk_sgs_vgl_sguds.geom sgs_geom,  
sk_mchu_sps_sopsr.geom sps_geom, ST_Distance (st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_mchu_sps_sopsr.geom, 4326 )) distance_geom,
    ST_Distance (st_transform(sk_sgs_vgl_sguds.geom, 4326)::geography, st_transform(sk_mchu_sps_sopsr.geom, 4326 )::geography) distance_geography
from gtlab.sk_sgs_vgl_sguds, gtlab.sk_mchu_sps_sopsr
where sk_sgs_vgl_sguds.gmlid_sk_mchu_sps_sopsr_by_name is not null
and sk_sgs_vgl_sguds.gmlid_sk_mchu_sps_sopsr_by_name = sk_mchu_sps_sopsr.gml_id
)
select * from foo where distance_geography > 5000
order by distance_geography desc
) nv 
where sk_sgs_vgl_sguds.objectid = nv.objectid and sk_sgs_vgl_sguds.name_sk_mchu_sps_sopsr_by_name = nv.name_sk_mchu_sps_sopsr_by_name
    
        """
        con1.execute(text(update_stmt))
        con1.commit()
        con1.close()


                