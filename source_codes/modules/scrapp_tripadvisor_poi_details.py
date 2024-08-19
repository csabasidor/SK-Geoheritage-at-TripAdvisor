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

from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import ElementNotInteractableException
from selenium.common.exceptions import ElementClickInterceptedException
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait as wait
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.proxy import Proxy, ProxyType
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.chrome.options import Options

start = time.time()







option = Options()
option.add_argument("--disable-infobars")
option.add_argument("start-maximized")
#option.add_experimental_option("excludeSwitches", ["enable-automation"])
#option.add_experimental_option('useAutomationExtension', False)
option.add_argument('--proxy-server={}'.format(proxies[1]))
option.add_argument("--disable-extensions")
# Pass the argument 1 to allow and 2 to block
option.add_experimental_option("prefs", { 
    "profile.default_content_setting_values.notifications": 1 
})

#https://googlechromelabs.github.io/chrome-for-testing/#stable
driver = webdriver.Chrome()

def get_poi_details(df_in):
    for i, id, name, url in zip(df_in.index, df_in["id"], df_in["Name"], df_in["url"]):  
        driver.get(url)
        time.sleep(5)
        element_name = driver.find_elements_by_class_name('biGQs._P.fiohW.eIegw')
        poi_name = element_name[0].text

        div_under_poi_name = driver.find_elements_by_class_name('IuzAT.e')
        div_under_poi_name_first_row = div_under_poi_name[0]
        try:
            poi_reviews_rating_n = div_under_poi_name[0].find_elements_by_class_name('kUaIL.zrGHt')
            poi_n_reviews = float(poi_reviews_rating_n[0].text.split(' ')[0].replace(',', ''))
        except (IndexError, ValueError):
            poi_n_reviews = None
        try:
            poi_rating = float(poi_reviews_rating_n[0].find_elements_by_class_name('jVDab.o.W.f.u.w.GOdjs')[0].get_attribute("aria-label").split(' of')[0])
        except (IndexError, ValueError):
            poi_rating = None
        poi_tags_element = div_under_poi_name_first_row.find_elements_by_class_name('biGQs._P.pZUbB.alXOW.oCpZu.GzNcM.nvOhm.UTQMg.ZTpaU.W.KxBGd')
        try:
            poi_tags = poi_tags_element[0].find_elements_by_class_name('eojVo')
            poi_tags_list = []
            for item in poi_tags:
                poi_tags_list.append(item.text)
        except (IndexError, ValueError):
            poi_tags_list = []

        div_the_area = driver.find_elements_by_class_name('AcNPX.A')

        try:
            div_neighbourhood = div_the_area[0].find_elements_by_class_name('biGQs._P.fiohW.fOtGX')
            poi_neighbourhood = div_neighbourhood[0].text.split('Neighborhood: ')[1]
        except IndexError:
            poi_neighbourhood = None
        try:
            poi_address = div_the_area[0].find_elements_by_class_name('biGQs._P.XWJSj.Wb')[0].text
        except IndexError:
            poi_address = None


        data_to_df = [id, poi_name, poi_n_reviews, poi_rating, poi_tags_list, poi_neighbourhood, poi_address, url]
        df_out = pd.DataFrame(data_to_df).T 
        df_out = df_out.rename(columns={0: 'id', 1: 'poi_name', 2: "poi_n_reviews", 3:"poi_rating", 4:"poi_tags_list", 5: "poi_neighbourhood", 6: "poi_address", 7: "url" })
        df_out.to_sql('sk_pois_activities_tripadvisor_0723_details', engine, schema='gtlab', if_exists='append')
        with engine.connect() as con:
                update_stmt = "UPDATE gtlab.sk_pois_activities_tripadvisor_0723 SET in_db = 'Yes in DB' where id = '" + id + "'; "
                con.execute(text(update_stmt))
                con.commit()
                con.close()
        print(i, " from ", len(df_in.index), "in DB", round(time.time() - start, 2))

