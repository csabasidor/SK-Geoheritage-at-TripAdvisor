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

#Make a single to MINDOP DMO registry find all <li> containing a DMO's name and url
url = "https://www.mindop.sk/ministerstvo-1/cestovny-ruch-7/register-organizacii-cestovneho-ruchu/register-oblastnych-organizacii-cestovneho-ruchu"
soup = bs(requests.get(url).text, 'lxml')
div = soup.find_all("div", {"class": "content-menu-list"})
forli = div[0].find_all("li", {"submenu2 unactive"})
#why did I left this here ?
i = -1

def get_dmo_base():
	#Get from each <li> name of DMO, pdf extract of DMO, create basic IDs and metadata as a df
	l_df = []
	for li in forli[2:-1]:
	    dmo_id = forli[2:-1].index(li)
	    dmo_name = li.text.strip().split(" (")[0]
	    
	    dmo_pdf_url = "https://www.mindop.sk" + li.find_all("a")[0]["href"]
	    filename = str(dmo_id) + "_" + dmo_name.strip().replace(" ", "_") + ".pdf"
	    if "&" in filename:
	        filename = filename.replace("&", "")
	    pdf_filename =  Path('dumps//reg_dmo_pdf//' + filename)
	    response = requests.get(dmo_pdf_url)
	    d = response.headers['content-disposition']
	    source_pdf_name = re.findall("filename=(.+)", d)[0]
	    
	    
	    pdf_filename.write_bytes(response.content)
	    #pdf to html...not necessary
	    #os.system(r'"C:\Users\csb\AppData\Local\Programs\Python\Python37-32\Scripts\pdf2txt.py"  -o' + filename + '.html ' + filename)
	    print(dmo_id, dmo_name, filename)

	    new_dct = {"dmo_id": dmo_id, "dmo_name": dmo_name, "dmo_pdf": filename, "dmo_source": dmo_pdf_url, "source_pdf_name": source_pdf_name} #"dmo_html": filename+ ".html"
	    df_to_l = pd.DataFrame.from_dict(new_dct, orient = "index")
	    l_df.append(df_to_l.T)

	#concat dfs to a single df_dmo
	df_dmo = pd.concat(l_df)
	#concat and reset index --> df.index == df.dmo_id
	df_dmo = df_dmo.reset_index()

	#little helper for extracting meta information
	months = ['januar', 'februar', 'marec', 'april', 'maj', 'jun', 'jul', 'august', 'september', 'october', 'november', 'december']
	years = [str(y) for y in range(2007, datetime.date.today().year+1)]

	#check DMO's last update (month, year) and organization identification number (cin)
	for i, source_pdf_name, dmo_pdf in zip(df_dmo.index, df_dmo.source_pdf_name, df_dmo['dmo_pdf']):
	     sentence = re.sub('[^A-Za-z0-9]+', ' ', source_pdf_name).strip()
	     tokens = sentence.split()
	     month = re.sub('\d+', '', [word for word in list(map(lambda x: x.lower(), tokens)) if [month for month in months if month in word]][0])
	     year = [w for w in tokens if w in years][0]
	     df_dmo.loc[i, 'source_last_update_ym_int'] = str(year) + "-" + str(months.index(month)+1)
	     with pdfplumber.open(Path('dumps//reg_dmo_pdf//' + dmo_pdf)) as pdf:
	        lines = []
	        for page in pdf.pages:
	            lines.append(page.extract_text().splitlines())
	        pdf_lines = [line for page in lines for line in page]
	        ico = [line for line in pdf_lines if "IČO" in line][0].split("IČO ")[1]
	        df_dmo.loc[i, 'dmo_cin'] = ico
	        print(i, ico)
	return df_dmo        

