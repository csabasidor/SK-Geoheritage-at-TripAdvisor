#!/usr/bin/env python3 
from sys import path
path.append('..//modules')
from modules.db_connector import *
from datetime import datetime
import googlemaps
gmaps = googlemaps.Client(key='!!!!!!!!!!!!!ADD YOUR KEY!!!!!!!!!!!')

#https://github.com/googlemaps/google-maps-services-python

import requests
import json
import pandas as pd
import numpy as np
from pprint import pprint
from datetime import datetime
pd.set_option('display.max_columns', 500)
pd.set_option('display.width', 1500)
startTime = datetime.now()
import pandas.io.sql as psql
import psycopg2 as pg
from sqlalchemy import create_engine, MetaData, Table, text
import time





def ggl_gcd_adrs(df_in):
    for i, poi_address, poi_id in zip(df_in.index, df_in['poi_address'], df_in['id']):
        time.sleep(0.3)
        print("Working on " + poi_address + ", " + str(i) + " of " + str(len(df_in)))
        #geocode_result = gmaps.geocode('1600 Amphitheatre Parkway, Mountain View, CA')
        l_json = gmaps.geocode(poi_address)
        lat = l_json[0]['geometry']['location']['lat']
        lon = l_json[0]['geometry']['location']['lng']
        ggl_location_type = l_json[0]['geometry']['location_type']
        ggl_address = l_json[0]['formatted_address']
        ggl_place_id = l_json[0]['place_id']    
        update_query = "UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details set lat ='" + str(lat) + "', lon = '" + str(lon) + "', ggl_address = '" + ggl_address + "', ggl_location_type = '" + ggl_location_type +"', ggl_place_id = '" + ggl_place_id + "' where id = '" +poi_id+"';"       
        with engine.connect() as con1:
            con1.execute(text(update_query))
            con1.commit()
            con1.close()
    

    

    
    
