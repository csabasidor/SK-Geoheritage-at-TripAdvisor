#!/usr/bin/env python3 
from arcgis.mapping import MapImageLayer
import geopandas as gpd
import json

url = 'https://gis.geology.sk/arcgis/rest/services/wgs_naucnaGeologia/VGL_wgs/MapServer/'

def call_arcgis_rest_to_gpdf(url):
	mil = MapImageLayer(url)
	feature_layer = mil.layers[0]
	feature_set = feature_layer.query()
	geojson_str = feature_set.to_geojson
	geojson_dict = json.loads(geojson_str)
	gpdf_from_arcgis = gpd.GeoDataFrame.from_features(geojson_dict['features'])
	return gpdf_from_arcgis
