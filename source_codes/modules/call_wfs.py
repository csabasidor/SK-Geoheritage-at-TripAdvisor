#!/usr/bin/env python3 
import pandas as pd
import geopandas as gpd
from sqlalchemy import *
import requests
from fiona import BytesCollection    



#thanks to sal(2021) at Stack
def wfs2gp_df(layer_name, url, bbox=None, wfs_version="2.0.0", outputFormat='application/gml+xml; version=3.2'):
    params = dict(service='WFS', version=wfs_version,request='GetFeature', typeName=layer_name, outputFormat=outputFormat)
    with BytesCollection(requests.get(url,params=params).content) as f:
        global df
        df = gpd.GeoDataFrame.from_features(f)
    print(len(df.index))
    return df
    
