print("foo")
from sys import path
path.append('..//modules')
path.append('..//dumps//reg_dmo_pdf')
from bs4 import BeautifulSoup as bs
import requests
import re
from pathlib import Path
#import os
import pandas as pd

import pdfplumber
import datetime



       

#from each DMO's pdf get names of members
l_df_members = []


def get_dmo_members(df_dmo):
	
	for i, dmo_id, dmo_name, dmo_pdf in zip(df_dmo.index, df_dmo['dmo_id'], df_dmo['dmo_name'], df_dmo['dmo_pdf']):
	    with pdfplumber.open(Path('dumps//reg_dmo_pdf//' + dmo_pdf)) as pdf:
	        lines = []
	        for page in pdf.pages:
	            lines.append(page.extract_text().splitlines())
	        pdf_lines = [line for page in lines for line in page]
	        l_members = pdf_lines[pdf_lines.index("Členovia")+1: pdf_lines.index("Osoby oprávnené konať v mene združenia")]
	       
	        df_out = pd.DataFrame(l_members, columns=["member_raw"])
	        df_out.loc[:, "dmo_id"] = dmo_id
	        df_out.loc[:, "dmo_name"] = dmo_name
	        ids = [str(x).split(".")[0] for x in df_out['member_raw'].to_list()]
	        df_out['member_id'] = ids
	        df_out['member_name'] = [i.replace(str(j) + ". ", '') for i, j in zip(df_out.member_raw, df_out.member_id)]
	        l_df_members.append(df_out)
	        print(i, len(l_members))
	        
	df_members = pd.concat(l_df_members)
	df_members = df_members.reset_index()

	#little helper, determine if member is municipality
	for i, member_name in zip(df_members.index, df_members.member_name):
	    if member_name.lower().startswith("obec ") or member_name.lower().startswith("mesto ") or member_name.lower().strip() == 'hlavné mesto sr bratislava':
	        df_members.loc[i, "lau2"] = 1
	        
	    else:
	        df_members.loc[i, "lau2"] = 0
	#get joinable name with GKU municipality names (except for Kosice, Bratislava (Mindop reg does not contain neighbourhoods))
	
	df_members['municipality_name'] = [x.lower().replace('obec ', '',1) if x.lower().startswith('obec ') else x.lower().replace('mesto ', '', 1) if x.lower().startswith('mesto ')  else None for x in df_members['member_name']]
	df_members.loc[df_members.query('member_name == "Hlavné mesto SR Bratislava"').index, 'municipality_name'] = 'bratislava'
	print(df_members.municipality_name)
	return df_members