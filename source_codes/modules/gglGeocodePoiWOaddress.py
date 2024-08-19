#!/usr/bin/env python3 
from sys import path
path.append('..//modules')
from modules.db_connector import *
import googlemaps
from datetime import datetime
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




def create_lat_lon_from_nm_mun_reg(df_in):
    for i, poi_address, poi_id in zip(df_in.index, df_in['adr'], df_in['id']):
        time.sleep(0.3)
        print("Working on " + poi_address + ", " + str(i) + " of " + str(len(df_in)))
        #geocode_result = gmaps.geocode('1600 Amphitheatre Parkway, Mountain View, CA')
        l_json = gmaps.geocode(poi_address)
        try:
            lat = l_json[0]['geometry']['location']['lat']
        except IndexError:
            lat = 'n/a'
        try:
            lon = l_json[0]['geometry']['location']['lng']
        except IndexError:
            lon = 'n/a'
        try:
            ggl_location_type = l_json[0]['geometry']['location_type']
        except IndexError:
            ggl_location_type = 'n/a'
        try:
            ggl_address = l_json[0]['formatted_address']
        except IndexError:
            ggl_address = 'n/a'
        try:
            ggl_place_id = l_json[0]['place_id']    
        except IndexError:
            ggl_places_id = 'n/a'
        
        
        
        
        update_query = "UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details set lat ='" + str(lat) + "', lon = '" + str(lon) + "', ggl_address = '" + ggl_address.replace("'", ' ').replace('"', ' ') + "', ggl_location_type = '" + ggl_location_type +"', ggl_place_id = '" + ggl_place_id + "' where id = '" +poi_id+"';"
        
        with engine.connect() as con1:
            con1.execute(text(update_query))
            con1.commit()
            con1.close()
    

    

    
    
