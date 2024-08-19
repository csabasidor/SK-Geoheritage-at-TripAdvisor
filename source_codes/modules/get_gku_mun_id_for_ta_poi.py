#!/usr/bin/env python3 
from sys import path
path.append('..//modules')
from modules.db_connector import *
import requests
import json
import pandas as pd
from urllib.request import urlopen
from bs4 import BeautifulSoup
from tabulate import tabulate
import itertools
import itertools
from urllib import parse
import functools
from itertools import groupby
from operator import itemgetter
from pprint import pprint
from datetime import datetime
from datetime import date, timedelta 
pd.set_option('display.max_columns', 500)
pd.set_option('display.width', 1500)
startTime = datetime.now()
import pandas.io.sql as psql
import psycopg2 as pg
from sqlalchemy import create_engine, MetaData, Table, text
import time
from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException
from selenium import webdriver
import time




start = time.time()





def point_within_gku_mun(df_in, gku_reg_name):
    with engine.connect() as con1:
        for i, id in zip(df_in.index, df_in['id']):
            print(i, len(df_in.index), gku_reg_name, round(start-time.time(),2))
            q = "WITH foo AS (SELECT sk_pois_activities_tripadvisor_0723_details.id, sk_pois_activities_tripadvisor_0723_details.municipality_str_url, sk_municipalities_gku.\"Kód_obce\",  sk_municipalities_gku.\"Názov_obce\" FROM gtlab.sk_pois_activities_tripadvisor_0723_details, gtlab.sk_municipalities_gku WHERE sk_pois_activities_tripadvisor_0723_details.id ='" + id + "' AND  sk_municipalities_gku.\"Názov_kraja\" = '"+gku_reg_name+"' AND st_within(sk_pois_activities_tripadvisor_0723_details.geom, st_transform(sk_municipalities_gku.geom, 4326))), bar AS (select dmo_id, \"Kód_obce\" from gtlab.sk_dmo_boundaries_susr_codes) SELECT * FROM foo LEFT JOIN bar USING(\"Kód_obce\");"
            df_out = pd.read_sql(q, con=con1)
            if df_out.empty:
                pass
            else:
                
        
                if df_out['dmo_id'].iat[0] == None:
                    update_stmt = "UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET gku_municipality_id = '" + df_out['Kód_obce'].iat[0] +"' where id = '" + id + "'; "
                elif df_out['dmo_id'].iat[0] != None:
                    update_stmt = "UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET gku_municipality_id = '" + df_out['Kód_obce'].iat[0] +"', dmo_id ="+ str(df_out['dmo_id'].iat[0]) + " where id = '" + id + "'; "
        
                con1.execute(text(update_stmt))
                con1.commit()
        con1.close()
    


