import pandas as pd
#!/usr/bin/env python3 
from sys import path
path.append('..//modules')
from modules.db_connector import *



import langid
import langdetect
from langdetect import detect, DetectorFactory, detect_langs
DetectorFactory.seed = 0
import chardet
    
def get_lang_id (df):
    for i, review_rand_unique_id, review_title, review_clean in zip(df.index, df['review_rand_unique_id'], df['review_title'], df['review_clean']):
        print(i, review_rand_unique_id, sep='\n')

        lngid_title_review = list(langid.classify(review_title))
        lngid_review = list(langid.classify(review_clean))
        try:
            lngdtct_title = detect_langs(review_title)
        except langdetect.lang_detect_exception.LangDetectException:
            lngdtct_title = ['error']
        try:
            lngdtct_review = detect_langs(review_clean)
        except langdetect.lang_detect_exception.LangDetectException:
            lngdtct_review = ['error']      
    
    
    
        with engine.connect() as con1:   
            update_query = "UPDATE  gtlab.sk_ta_geosites_reviews SET  py_langid_title_review ='" + str(lngid_title_review).replace('[', '{').replace(']', '}').replace("'", "") + "', py_langid_review ='" + str(lngid_review).replace('[', '{').replace(']', '}').replace("'", "") + "', py_langdetect_title_review ='" + str(lngdtct_title).replace('[', '{').replace(']', '}').replace("'", "") +  "', py_langdetect_review ='" + str(lngdtct_review).replace('[', '{').replace(']', '}').replace("'", "") + "'  WHERE review_rand_unique_id='" + review_rand_unique_id +"'; "
            con1.execute(text(update_query))
            con1.commit()
            con1.close()
