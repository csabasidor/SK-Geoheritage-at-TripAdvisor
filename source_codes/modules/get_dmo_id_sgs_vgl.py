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


def create_sgs_dmo_id():
    with engine.connect() as con1:
        create_stmt = 'CREATE TABLE gtlab.sk_sgs_vgl_dmo_ids AS WITH foo AS (SELECT "Kód_obce" gku_municipality_id, dmo_id FROM gtlab.sk_dmo_boundaries_susr_codes), bar AS (SELECT id, gku_municipality_id FROM gtlab.sk_sgs_vgl_sguds) SELECT * FROM bar LEFT JOIN foo USING(gku_municipality_id) ORDER BY id;'
        con1.execute(text(create_stmt))
        con1.commit()
        update_stmt = 'UPDATE gtlab.sk_sgs_vgl_sguds SET dmo_id = nv.dmo_id FROM (SELECT * FROM gtlab.sk_sgs_vgl_dmo_ids) nv WHERE sk_sgs_vgl_sguds.id = nv.id'
        con1.execute(text(update_stmt))
        con1.commit()
        con1.close()


        


        
            

        
            

  



