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





def add_municipality_region(df_in):

    for i, poi_id, url in zip(df_in.index, df_in['id'], df_in['url']):
        if "Region.html" in url or "Reg.html" in url or "Regio.html" in url or "R.html" in url or "Regi.html" in url:
            place_base_str = url.split('-Reviews-')[-1].split('-')[-1]
            #print(place_base_str)
            if 'Banska_Bystrica_Region' in place_base_str or 'Banska_Bystrica_Reg' in place_base_str or 'Banska_Bystrica_Regio' in place_base_str or 'Banska_Bystrica_R' in place_base_str or 'Banska_Bystrica_Regi' in place_base_str:
                region_str = ' '.join([str(elem) for elem in place_base_str.split('_')[-3:-1]])
                municipality_str = ' '.join([str(elem) for elem in place_base_str.split('_')[0:-3]])
            else:
                region_str = place_base_str.split('_')[-2]
                municipality_str = ' '.join([str(elem) for elem in place_base_str.split('_')[0:-2]])
            print(municipality_str, " --", region_str)
            
        
            
        else:
            place_base_str = url.split('-Reviews-')[-1].split('-')[-1].split('.html')[0]
            #print(place_base_str)
            tokens = url.split('-Reviews-')[-1].split('-')[-1].split('.html')[0].split('_')
            print(tokens)
            if tokens[-1] == '':
                tokens = tokens[0:-1]
            else:
                tokens = tokens
            print(tokens)
            if tokens[-1] in ['Kosice', 'Presov', 'Zilina', 'Trnava', 'Nitra', 'Trencin', 'Bratislava']:
                region_str = tokens[-1]
                municipality_str = ' '.join([str(elem) for elem in tokens[0:-1]])
                poi_id = url.split('-Reviews-')[0].split('_Review-')[-1]    
            elif tokens[-1] == 'Bystrica':
                region_str = ' '.join([str(elem) for elem in tokens[-2:]])
                municipality_str = ' '.join([str(elem) for elem in tokens[0:-2]])
                poi_id = url.split('-Reviews-')[0].split('_Review-')[-1]    
                print(municipality_str, " -- ", region_str)
            elif tokens[-1] in ['Bystr', 'Bystric', 'Bystri']:
                region_str = 'Banska Bystrica'
                municipality_str = ' '.join([str(elem) for elem in tokens[0:-2]])
                poi_id = url.split('-Reviews-')[0].split('_Review-')[-1]
            elif tokens[-1] in ['Banska']:
                region_str = 'Banska Bystrica'
                municipality_str = ' '.join([str(elem) for elem in tokens[0:-1]])
                poi_id = url.split('-Reviews-')[0].split('_Review-')[-1]
            elif tokens[-1] in ['Bratisl', 'Brati']:
                region_str = 'Bratislava'
                municipality_str = ' '.join([str(elem) for elem in tokens[0:-1]])
                poi_id = url.split('-Reviews-')[0].split('_Review-')[-1]
            else:
                region_str = 'n/a'
                municipality_str = ' '.join([str(elem) for elem in tokens])
                poi_id = url.split('-Reviews-')[0].split('_Review-')[-1]
                
            
        print(str(region_str), str(municipality_str))
        with engine.connect() as con1:
            update_stmt = "UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET region_str_url = '" + region_str +"', municipality_str_url ='"+ municipality_str + "' where id = '" + poi_id + "'; "
            print(update_stmt)
            con1.execute(text(update_stmt))
            con1.commit()
            con1.close()
        print(i)


