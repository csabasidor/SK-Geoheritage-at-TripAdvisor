#!/usr/bin/env python3 
from sys import path
path.append('..//modules')
from modules.db_connector import *
from deep_translator import GoogleTranslator as gt


import pandas as pd


def ggl_translate_to_en(df):
    for i, review_rand_unique_id, review_title, review_clean in zip(df.index, df['review_rand_unique_id'], df['review_title'], df['review_clean']):
        print(i)
        try:
            review_en = gt(source='auto', target='en').translate(review_clean)
        except exceptions.NotValidLength:
            pass
        title_en = gt(source='auto', target='en').translate(review_title)
        try:
            update_stmt = "UPDATE gtlab.sk_ta_geosites_reviews SET review_en = '" + review_en.replace("'", "''") + "', review_title_en = '" + title_en.replace("'", "''") + "' where review_rand_unique_id = '" + review_rand_unique_id + "'; "
        except AttributeError:
            update_stmt = "UPDATE gtlab.sk_ta_geosites_reviews SET review_en = 'n/a', review_title_en='n/a' where review_rand_unique_id = '" + review_rand_unique_id + "'; "    
        with engine.connect() as con1:
            con1.execute(text(update_stmt))
            con1.commit()
            con1.close()
        
            
    
