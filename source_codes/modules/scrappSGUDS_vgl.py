#!/usr/bin/env python3 
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









global list_of_base_urls
list_of_hotel_urls = []

global n_sites
n_sites = []

global dataframes_list
dataframes_list = []



option = Options()
option.add_argument("--disable-infobars")
option.add_argument("start-maximized")
option.add_argument("--disable-extensions")
# Pass the argument 1 to allow and 2 to block
option.add_experimental_option("prefs", { 
    "profile.default_content_setting_values.notifications": 1 
})


driver = webdriver.Chrome()
#No time for playing around with webelements scrapp all text, then transform them by simple logic on db side
        

def get_vgl_web_app_to_sgs_df(df_in):
    base_url = "https://app.geology.sk/g_vglg/content.html?id="

    l_df = []
    start = time.time()
    for i, id, in zip(df_in.index, df_in["id"]):
        print("Working on ", str(id), round(start - time.time(), 2), " secs")
        print(base_url+str(int(id)))
        driver.get(base_url+str(id))
        time.sleep(1)
        div_content_rc = driver.find_element('xpath','//div[@id="div_content_rc"]').text
        spans = driver.find_elements('xpath','//span')
        for span in spans:
            if span.text == "3. Geologická charakteristika":
                span.click()
                time.sleep(1)
                div_content_hornina = driver.find_element('xpath','//div[@id="div_content_hornina"]').text
                div_content_rgc1 = driver.find_element('xpath','//div[@id="div_content_rgc1"]').text
                div_content_rgc2 = driver.find_element('xpath', '//div[@id="div_content_rgc2"]').text
                div_content_rgc3 = driver.find_element('xpath', '//div[@id="div_content_rgc3"]').text
                div_content_rgc4 = driver.find_element('xpath', '//div[@id="div_content_rgc4"]').text
                div_content_vek = driver.find_element('xpath', '//div[@id="div_content_vek"]').text
                div_content_era = driver.find_element('xpath', '//div[@id="div_content_era"]').text
                div_content_perioda = driver.find_element('xpath', '//div[@id="div_content_perioda"]').text
                div_content_epocha = driver.find_element('xpath', '//div[@id="div_content_epocha"]').text
                div_content_stupen = driver.find_element('xpath', '//div[@id="div_content_stupen"]').text
                div_content_podstupen = driver.find_element('xpath', '//div[@id="div_content_podstupen"]').text
                div_content_paleogeografia = driver.find_element('xpath', '//div[@id="div_content_paleogeografia"]').text
                div_content_indikatory = driver.find_element('xpath', '//div[@id="div_content_indikatory"]').text
                div_content_stratotyp = driver.find_element('xpath', '//div[@id="div_content_stratotyp"]').text
                div_content_odkryv = driver.find_element('xpath', '//div[@id="div_content_odkryv"]').text
                div_content_lpchar = driver.find_element('xpath', '//div[@id="div_content_lpchar"]').text
                div_content_geneza = driver.find_element('xpath', '//div[@id="div_content_geneza"]').text
                div_content_pozicia = driver.find_element('xpath', '//div[@id="div_content_pozicia"]').text
                div_content_textura = driver.find_element('xpath', '//div[@id="div_content_textura"]').text
                div_content_struktura = driver.find_element('xpath', '//div[@id="div_content_struktura"]').text
                div_content_mineral = driver.find_element('xpath', '//div[@id="div_content_mineral"]').text
                div_content_fosilies = driver.find_element('xpath', '//div[@id="div_content_fosilies"]').text
                div_content_fosilie = driver.find_element('xpath', '//div[@id="div_content_fosilie"]').text
            if span.text == "4. Ochrana územia":
                span.click()
                time.sleep(1)
                div_content_unesco = driver.find_element('xpath', '//div[@id="div_content_unesco"]').text
                div_content_name_uev = driver.find_element('xpath', '//div[@id="div_content_name_uev"]').text
                div_content_name_mchu = driver.find_element('xpath', '//div[@id="div_content_name_mchu"]').text
                div_content_typ_mchu = driver.find_element('xpath', '//div[@id="div_content_typ_mchu"]').text
                div_content_zona_mchu = driver.find_element('xpath', '//div[@id="div_content_zona_mchu"]').text
                div_content_name_vchu = driver.find_element('xpath', '//div[@id="div_content_name_vchu"]').text
                div_content_leg_vchu = driver.find_element('xpath', '//div[@id="div_content_leg_vchu"]').text
                div_content_typ_vchu = driver.find_element('xpath', '//div[@id="div_content_typ_vchu"]').text
                div_content_zona_vchu = driver.find_element('xpath', '//div[@id="div_content_zona_vchu"]').text
                div_content_name_chvu = driver.find_element('xpath', '//div[@id="div_content_name_chvu"]').text
                div_content_vyznamnost = driver.find_element('xpath', '//div[@id="div_content_vyznamnost"]').text
            if span.text == "5. Opis lokality":
                span.click()
                time.sleep(1)
                div_content_dostupnost = driver.find_element('xpath', '//div[@id="div_content_dostupnost"]').text
                div_content_vyuzitie = driver.find_element('xpath', '//div[@id="div_content_vyuzitie"]').text
                div_content_resumes = driver.find_element('xpath', '//div[@id="div_content_resumes"]').text
                div_content_dostupnost = driver.find_element('xpath', '//div[@id="div_content_dostupnost"]').text
                div_content_literatura = driver.find_element('xpath', '//div[@id="div_content_literatura"]').text
            if span.text == "6. Spracovanie záznamu":
                span.click()
                time.sleep(1)
                div_content_autor = driver.find_element('xpath', '//div[@id="div_content_autor"]').text
                div_content_roks = driver.find_element('xpath', '//div[@id="div_content_roks"]').text
                div_content_roka = driver.find_element('xpath', '//div[@id="div_content_roka"]').text
        
                
        new_dct = {"id": id, "rc": div_content_rc, "hornina": div_content_hornina, "rgc1": div_content_rgc1, "rgc2": div_content_rgc2, "rgc3": div_content_rgc3, "rgc4": div_content_rgc4, "vek": div_content_vek, "content_era": div_content_era, "perioda": div_content_perioda, "epocha": div_content_epocha, "stupen": div_content_stupen, "podstupen": div_content_podstupen, "paleogeografia": div_content_paleogeografia, "indikatory": div_content_indikatory, "stratotyp": div_content_stratotyp, "odkryv": div_content_odkryv, "lpchar": div_content_lpchar, "geneza": div_content_geneza, "pozicia": div_content_pozicia, "textura": div_content_textura, "struktura": div_content_struktura, "mineral": div_content_mineral, "fosilies": div_content_fosilies, "fosilie": div_content_fosilie, "unesco": div_content_unesco, "name_uev": div_content_name_uev, "name_mchu": div_content_name_mchu, "typ_mchu": div_content_typ_mchu, "zona_mchu": div_content_zona_mchu, "name_vchu": div_content_name_vchu, "leg_vchu": div_content_leg_vchu, "typ_vchu": div_content_typ_vchu, "zona_vchu": div_content_zona_vchu, "name_chvu": div_content_name_chvu, "vyznamnost": div_content_vyznamnost, "dostupnost": div_content_dostupnost, "vyuzitie": div_content_vyuzitie, "resumes": div_content_resumes, "dostupnost": div_content_dostupnost, "literatura": div_content_literatura, "autor": div_content_autor, "roks": div_content_roks, "roka": div_content_roka}    
        df = pd.DataFrame.from_dict(new_dct, orient='index').T
        l_df.append(df)
    df_out = pd.concat(l_df)
    driver.close()
    driver.quit()
    return df_out



