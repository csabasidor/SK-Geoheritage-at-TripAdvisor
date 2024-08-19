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






        

def get_municipality_id(df_in):
    for i, id in zip(df_in.index, df_in['id']):
        with engine.connect() as con1:
            q = 'SELECT sk_sgs_vgl_sguds.id, sk_municipalities_gku."Kód_obce" FROM gtlab.sk_sgs_vgl_sguds, gtlab.sk_municipalities_gku WHERE sk_sgs_vgl_sguds.id = ' + str(id) + ' AND st_within(st_transform(sk_sgs_vgl_sguds.geom, 4326), st_transform(sk_municipalities_gku.geom, 4326 ));'
            df_out = pd.read_sql(q, con=con1)
            print(id, df_out['Kód_obce'].iat[0])
            df_out.to_sql('sk_sgs_vgl_municipality_ids', engine, schema='gtlab', if_exists='append')
            update_stmt = "UPDATE gtlab.sk_sgs_vgl_sguds SET gku_municipality_id ='" + df_out['Kód_obce'].iat[0] +"' WHERE id = '"+ str(id) +"'; "
            con1.execute(text(update_stmt))
            con1.commit()
            con1.close()

        
            

        
            

  



