import psycopg2 as pg
from geoalchemy2 import Geometry, WKTElement

from sqlalchemy import create_engine, MetaData, Table, text
import pandas.io.sql as psql
engine = create_engine('postgresql+psycopg2://postgres:17021987@localhost:5432/dbis')


