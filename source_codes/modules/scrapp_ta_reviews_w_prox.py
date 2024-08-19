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


tripadvisor_base_url = "https://www.tripadvisor.sk"



global list_of_base_urls
list_of_hotel_urls = []

global n_sites
n_sites = []

global dataframes_list
dataframes_list = []


option = Options()
option.add_argument("--disable-infobars")
option.add_argument("start-maximized")
#option.add_experimental_option("excludeSwitches", ["enable-automation"])
#option.add_experimental_option('useAutomationExtension', False)
#option.add_argument('--proxy-server={}'.format(proxies[-1]))
option.add_argument("--disable-extensions")
# Pass the argument 1 to allow and 2 to block
option.add_experimental_option("prefs", { 
    "profile.default_content_setting_values.notifications": 1 
})
driver = webdriver.Chrome()

#https://googlechromelabs.github.io/chrome-for-testing/#stable
#IF RUN LOCALY
#driver = webdriver.Chrome(chrome_options=option, executable_path='PATH\\chromedriver.exe')
#No time for playing around with webelements scrapp all text, then transform them by simple logic on db side
        #reviewer_name = x.find_element_by_xpath('//span[@class="biGQs _P fiohW fOtGX"]').text
        #reviewer_profile_url = x.find_element_by_xpath('//span[@class="biGQs _P fiohW fOtGX"]/a[@target="_self"]').get_attribute('href')
        #x.find_element_by_xpath('//div[@class="JINyA"]').text


def scrap_reviews (df_in):
    def get_raw_reviews():
        review_cards = driver.find_elements_by_xpath('//div[@data-automation="reviewCard"]')
        for x in review_cards:
            review_text = x.text
            new_dct = {"poi_id": poi_id, "review_raw": review_text}
            df_new = pd.DataFrame.from_dict(new_dct, orient = 'index')
            df_out = df_new.T
            df_out.to_sql('sk_ta_geosites_reviews_raw', engine, schema='gtlab', if_exists='append')

    for i, poi_id, url, poi_n_reviews in zip(df_in.index, df_in["id"], df_in["url"],df_in["poi_n_reviews"] ):
        global page
        page = 1
        driver.get(url)
        time.sleep(5)
        last_height = driver.execute_script("return document.body.scrollHeight")
        
        driver.execute_script("window.scrollTo(0, "+ str(last_height) + ");")
        time.sleep(5)
        try:
            section_to_scroll = driver.find_element_by_xpath('//div[@class="UDHpd f u G"]')
            driver.execute_script("arguments[0].scrollIntoView();", section_to_scroll)
            driver.execute_script("window.scrollBy(0, -200);")
            time.sleep(2)
            driver.find_element_by_xpath('//button[@type="button" and (contains(@class,"OKHdJ z Pc PQ Pp PD W _S Gn Rd _M PQFNM wSSLS"))]').click()
            
        except ElementClickInterceptedException:
            driver.execute_script("arguments[0].scrollIntoView();", section_to_scroll)
            driver.execute_script("window.scrollBy(0, -200);")
            driver.find_element_by_xpath('//button[@type="button" and (contains(@class,"OKHdJ z Pc PQ Pp PD W _S Gn Rd _M PQFNM wSSLS"))]').click()
            time.sleep(5)
            btn.click()

        try:
            driver.find_element_by_xpath('//ul[@role="listbox" and (contains(@class,"IIbRQ _g z Pa PX Pn PJ"))]/li[@role="none"]/span[@id="menu-item-all"]').click()
        except NoSuchElementException:
            break
        get_raw_reviews()
        print("page ", page)
        time.sleep(5)
        for i in range(round(poi_n_reviews/10)):
            page = page +1
            try:
                driver.find_element_by_xpath('//a[@aria-label="Next page"]').click()
                time.sleep(5)
                get_raw_reviews()
                time.sleep(5)
                print("page ", page, "of ", round(poi_n_reviews/10))
            except ElementClickInterceptedException:
                driver.execute_script("window.scrollBy(0, -200);")
                time.sleep(5)
                get_raw_reviews()
                time.sleep(5)
                print("page ", page, "of ", round(poi_n_reviews/10))
            except NoSuchElementException:
                continue

        with engine.connect() as con1:
            update_stmt = "UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET reviews_in_db = 'yes' where id = '" + poi_id + "'; "
            con1.execute(text(update_stmt))
            con1.commit()
            con1.close()        
    
    
