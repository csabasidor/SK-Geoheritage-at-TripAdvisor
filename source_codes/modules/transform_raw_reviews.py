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

import sys
non_bmp_map = dict.fromkeys(range(0x10000, sys.maxunicode + 1), 0xfffd)


import re

start = time.time()

def transform_text(df_in):
    months_long  = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'] 
    months_short = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']

    global list_df
    list_df = []

    trash_1 = "This review is the subjective opinion of a Tripadvisor member and not of Tripadvisor LLC. Tripadvisor performs checks on reviews as part of our industry-leading trust & safety standards. Read our transparency report to learn more."

    for i, poi_id, review_raw in zip(df_in.index, df_in['poi_id'], df_in['review_raw']):
        for month_long in months_long:
            if "Written " + month_long in review_raw and trash_1 in review_raw:
                #print(month_long + review_raw.split("Written " + month_long)[-1].replace(trash_1, ''))
                #print("Written " + month_long)
                dt = month_long + review_raw.split("Written " + month_long)[-1].replace(trash_1, '')
                wdt = dt.split(' ')
                review_written_month = wdt[0]
                review_written_day = wdt[1].replace(',', '')
                review_written_year = wdt[-1].replace('\n', '')
            elif "Written " + month_long not in review_raw and trash_1 not in review_raw:
                review_written_month = 'n/a'
                review_written_day = 'n/a'
                review_written_year = 'n/a'
                
        if ' of 5 bubbles' in review_raw:
            
            first_part = review_raw.split(' of 5 bubbles')[0]
            second_part = review_raw.split(' of 5 bubbles')[-1]
            #print(len(first_part.split('\n')))
            
            review_rating = first_part.split('\n')[-1]
            if len(first_part.split('\n')) == 4:
                reviewer_name = first_part.split('\n')[0]
                reviewer_something = first_part.split('\n')[2]
                reviewer_n_ratings = ''.join([x for x in first_part.split('\n')[1] if x.isdigit()])
                
                if int(reviewer_n_ratings) > 999:
                    reviewer_origin = ''.join([x for x in first_part.split('\n')[1].split('contribution')[0] if not x.isdigit()])[0:-2]   
                elif int(reviewer_n_ratings) < 999:
                    reviewer_origin = ''.join([x for x in first_part.split('\n')[1].split('contribution')[0] if not x.isdigit()])[0:-1]
            else:
                reviewer_name = 'n/a'
                reviewer_something = 'n/a'
                reviewer_n_ratings = 'n/a'
                reviewer_origin = 'n/a'
            
            if len(second_part) == 0:
                review_title = 'n/a'
                review_clean = 'n/a'
                
            elif len(second_part) != 0:
                try:
                    review_title = second_part.split('\n')[1]
                except UnicodeEncodeError:
                    review_title = second_part.split('\n')[1].translate(non_bmp_map)
                try:
                    if int(second_part.split('\n')[2].split(' ')[1].replace(' ', '')) in range(1,2025):
                        if '•' in second_part.split('\n')[2]:
                            visit_month = second_part.split('\n')[2].split(' ')[0]
                            visit_year = second_part.split('\n')[2].split(' ')[1]
                            visit_group_type = second_part.split('\n')[2].split(' ')[-1]
                        elif '•' not in second_part.split('\n')[2]:
                            visit_month = second_part.split('\n')[2].split(' ')[0]
                            visit_year = second_part.split('\n')[2].split(' ')[1]
                            visit_group_type = 'n/a'
                    review_clean = ' '.join([item for item in second_part.split('\n')[3:-2] if item not in [' ', 'Read more', 'Google Translation']])
                    
                        #print("Visit month: ", visit_month, "Visit year: ", visit_year, "visit_group_type: ", visit_group_type)
                except ValueError:
                    
                    visit_month = 'n/a'
                    visit_year = 'n/a'
                    visit_group_type = 'n/a'
                    review_clean = ' '.join([item for item in second_part.split('\n')[2:-2] if item not in [' ', 'Read more', 'Google Translation']])
                    
        
        
        
        new_dct = {"poi_id": poi_id, "review_raw": review_raw, "reviewer_name": reviewer_name, "reviewer_something": reviewer_something, "reviewer_origin": reviewer_origin, "reviewer_n_ratings": reviewer_n_ratings, "review_rating": review_rating, "review_written_day": review_written_day, "review_written_month": review_written_month, "review_written_year": review_written_year, "visit_month": visit_month, "visit_year": visit_year, "review_title": review_title, "visit_group_type": visit_group_type, "review_clean": review_clean}
        new_df = pd.DataFrame.from_dict(new_dct, orient='index').T
        list_df.append(new_df)

    df_out = pd.concat(list_df)
    df_out.to_sql('sk_ta_geosites_reviews', engine, schema='gtlab', if_exists='replace')
#SOME OLD TRASH MAY BE USEFUL LATER
#NO HORDING 
                #try:
                #    print(i, second_part)
                #    print(i,second_part.split('\n')[2])
                #except UnicodeEncodeError:
                #    print(i, second_part.translate(non_bmp_map))
                #    print(i,second_part.split('\n')[2].translate(non_bmp_map))
                    
                
            #elif second_part.split('\n')[2].split(' ')[0] in months_short::
                
                
                
            #second_part.split('\n')[-1] != "This review is the subjective opinion of a Tripadvisor member and not of Tripadvisor LLC. Tripadvisor performs checks on reviews as part of our industry-leading trust & safety standards. Read our transparency report to learn more.":
            #print(second_part)
        


        #print(len(second_part.split('\n')))
        #print(second_part.split('\n')[-1])
    #new_dct = {"review_raw": review_raw, "reviewer_name": reviewer_name, "reviewer_something": reviewer_something, "reviewer_origin": reviewer_origin, "reviewer_n_ratings": reviewer_n_ratings, "review_rating": review_rating, "review_written_day": review_written_day, "review_written_month": review_written_month, "review_written_year": review_written_year}
    #new_df = pd.DataFrame.from_dict(new_dct, orient='index')
    #print(new_df)
             
             


            #if ',' not in first_part.split('\n')[1] and first_part.split('\n')[1][0] in ['0','1','2','3','4','5','6','7','8','9']:
            #    reviewer_n_ratings = first_part.split('\n')[1].split(' ')[0]
            #elif ',' not in first_part.split('\n')[1] and first_part.split('\n')[1][0] not in ['0','1','2','3','4','5','6','7','8','9']:
                #print(i, "--->", first_part.split('\n')[1])
                #reviewer_n_ratings = ''.join([x for x in first_part.split('\n')[1] if x.isdigit()])
                #print(reviewer_n_ratings)
            #else:
            #    #print(first_part.split('\n')[1])
      #  else:
            
            #rint(first_part.split('\n'))
            
            
            #reviewer_something = 'n/a'
            #reviewer_name = 'n/a'
            #print(i, first_part)
        #if len(first_part.split('\n')[1].split(' ')) == 2 and first_part.split('\n')[1].split(' ')[0] in ['0','1','2','3','4','5','6','7','8','9']:
        #    reviewer_n_reviews =
        #reviewer_origin_and_n_reviews = first_part.split('\n')[1]
        #print(i, "--->",second_part.split('\n')[0])
    #else:
    #    break
    
            
        



