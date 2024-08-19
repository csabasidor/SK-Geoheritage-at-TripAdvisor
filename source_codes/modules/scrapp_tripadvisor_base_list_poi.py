#!/usr/bin/env python3 
from sys import path
path.append('..//modules')
from modules.db_connector import *

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







option = Options()
option.add_argument("--disable-infobars")
option.add_argument("start-maximized")
option.add_argument("--disable-extensions")

# Pass the argument 1 to allow and 2 to block
option.add_experimental_option("prefs", { 
    "profile.default_content_setting_values.notifications": 1 
})



driver = webdriver.Chrome()


driver.get("https://www.tripadvisor.com/Attractions-g274922-Activities-oa1410-Slovakia.html")





def scrappPOIS():
    pois = driver.find_elements('class_name', 'alPVI.eNNhq.PgLKC.tnGGX')

    l_df = []
    l_pois = []

    for poi in pois:
        l_urls = []
        names = poi.find_elements('class_name', 'XfVdV.o.AIbhI')
        for name in names:
            name = name.text
            #print(name)
        urls = poi.find_elements('tag_name','a')
        for url in urls:
            url = url.get_attribute('href')
            l_urls.append(url)
            l_u_urls = list(set(l_urls))

        url = l_u_urls[0]
        foo = (name, url)
        l_pois.append(foo)
    l_pois_clean = list(set(l_pois))
    df = pd.DataFrame(l_pois_clean, columns =['Name', 'url'])
    
    df.to_sql("sk_pois_activities_tripadvisor_0723", engine, schema='gtlab', if_exists = "append")
    
    
    


scrappPOIS()
#range = last page value - 1
for i in range(113):
    driver.execute_script("window.scrollBy(0,500)","")
    driver.find_element(By.XPATH,'//a[contains(@aria-label,"Next page")]').click()
    time.sleep(2)
    scrappPOIS()
    print(i)
      
driver.close()
driver.quit()   



#ADD columns ID; name_clean; control column for scrapping details deatils_in_db; 
with engine.connect() as con1:
    alter_stmt = "ALTER TABLE gtlab.sk_pois_activities_tripadvisor_0723 ADD COLUMN id text, ADD COLUMN name_clean text, ADD COLUMN details_in_db text";
    con1.execute(text(alter_stmt))
    con1.commit()
    con1.close()
    
with engine.connect() as con1:
    q = "select * from gtlab.sk_pois_activities_tripadvisor_0723 order by ord"
    df_ta_pois = pd.read_sql(q, con=con1)
    con1.close()
    
for ord, name, url in zip(df_ta_pois["ord"], df_ta_pois["Name"], df_ta_pois["url"]):
    name_clean = name.split(". ", 1)[1]
    id = url.split("Attraction_Review-", 1)[1].split("-Reviews-",1)[0]
    print(ord)
    with engine.connect() as con1:
        update_stmt = "UPDATE gtlab.sk_pois_activities_tripadvisor_0723 SET id = '" + id  +"', name_clean = '"+ name_clean.replace("'", "''") + "' WHERE url = '" + url +"';"        
        con1.execute(text(update_stmt))
        con1.commit()
        con1.close()


