# the following installations are required
# python -m textblob.download_corpora
# python -m spacy download en_core_web_sm


#!/usr/bin/env python3 
from sys import path
path.append('..//modules')
from modules.db_connector import *



import pandas as pd
import numpy as np
#Sent1
from textblob import TextBlob

#SENT 2 
from vaderSentiment.vaderSentiment import SentimentIntensityAnalyzer as vader_sia

#Sent3
import nltk
from nltk.sentiment import SentimentIntensityAnalyzer as nltk_sia

#sent 4 spacy
import spacy
from spacytextblob.spacytextblob import SpacyTextBlob

nlp = spacy.load('en_core_web_sm')
nlp.add_pipe('spacytextblob')



#sent 5 SENT5 bert
import torch
from transformers import AutoTokenizer, AutoModelForSequenceClassification

tokenizer = AutoTokenizer.from_pretrained("nlptown/bert-base-multilingual-uncased-sentiment")
model = AutoModelForSequenceClassification.from_pretrained("nlptown/bert-base-multilingual-uncased-sentiment")

def measure_sentiments(df):
    for i, review_rand_unique_id, review_en, review_title_en in zip(df.index, df['review_rand_unique_id'], df['review_en'], df['review_title_en']):
        print(i)
        #Sent1 Textblob
        #CHECK THE POLARITY VS SUBJECTIVITY SCORE
        sent1_title_polarity = str(TextBlob(review_title_en).sentiment[0])
        sent1_title_subjectivity = str(TextBlob(review_title_en).sentiment[1])
        sent1_review_polarity = str(TextBlob(review_en).sentiment[0])
        sent1_review_subjectivity = str(TextBlob(review_en).sentiment[1])
        #Sent2 VaderSentiment
        vader_analyzer = vader_sia()
        sent2_title = vader_analyzer.polarity_scores(review_title_en)
        sent2_title_neg = str(sent2_title['neg'])
        sent2_title_neu = str(sent2_title['neu'])
        sent2_title_pos = str(sent2_title['pos'])
        sent2_title_compound =  str(sent2_title['compound'])
        sent2_review = vader_analyzer.polarity_scores(review_en)
        sent2_review_neg = str(sent2_review['neg'])
        sent2_review_neu = str(sent2_review['neu'])
        sent2_review_pos = str(sent2_review['pos'])
        sent2_review_compound =  str(sent2_review['compound'])
        #Sent3 nltk
        nltk_analyzer = nltk_sia()
        sent3_title = nltk_analyzer.polarity_scores(review_title_en)
        sent3_title_neg = str(sent3_title['neg'])
        sent3_title_neu = str(sent3_title['neu'])
        sent3_title_pos = str(sent3_title['pos'])
        sent3_title_compound =  str(sent3_title['compound'])
        sent3_review = nltk_analyzer.polarity_scores(review_en)
        sent3_review_neg = str(sent3_review['neg'])
        sent3_review_neu = str(sent3_review['neu'])
        sent3_review_pos = str(sent3_review['pos'])
        sent3_review_compound =  str(sent3_review['compound'])
        #sent4 spacy
        tit_doc = nlp(review_title_en)
        rev_doc = nlp(review_en)
        sent4_title_polarity = tit_doc._.blob.polarity
        sent4_title_subjectivity = tit_doc._.blob.subjectivity
        sent4_review_polarity = rev_doc._.blob.polarity 
        sent4_review_subjectivity = rev_doc._.blob.subjectivity
        #sent5 BERT
        tokens_title = tokenizer.encode(review_title_en, return_tensors= "pt")
        model_title = model(tokens_title)
        sent5_title_polarity = int(torch.argmax(model_title.logits)) + 1
        tokens_review = tokenizer.encode(review_en, return_tensors= "pt")
        model_review = model(tokens_review)
        sent5_review_polarity = int(torch.argmax(model_review.logits)) + 1



        update_stmt = "UPDATE gtlab.sk_ta_geosites_reviews SET sent1_title_polarity =" + str(sent1_title_polarity) + ", sent1_title_subjectivity =" + str(sent1_title_subjectivity) + ", sent1_review_polarity =" + str(sent1_review_polarity) + ", sent1_review_subjectivity =" + str(sent1_review_subjectivity) + ", sent2_title_neg =" + str(sent2_title_neg) + ", sent2_title_neu =" + str(sent2_title_neu) + ", sent2_title_pos =" + str(sent2_title_pos) +", sent2_title_compound =" + str(sent2_title_compound) + ", sent2_review_neg =" + str(sent2_review_neg) +", sent2_review_neu =" + str(sent2_review_neu) + ", sent2_review_pos =" + str(sent2_review_pos)+ ", sent2_review_compound =" + str(sent2_review_compound)+ ", sent3_title_neg =" + str(sent3_title_neg) +", sent3_title_neu =" + str(sent3_title_neu) + ", sent3_title_pos =" + str(sent3_title_pos) +", sent3_title_compound =" + str(sent3_title_compound) + ", sent3_review_neg =" + str(sent3_review_neg) +", sent3_review_neu =" + str(sent3_review_neu) +", sent3_review_pos =" + str(sent3_review_pos)+ ", sent3_review_compound =" + str(sent3_review_compound)+ ", sent4_title_polarity=" + str(sent4_title_polarity) +",sent4_title_subjectivity ="+str(sent4_title_subjectivity) +", sent4_review_polarity="+str(sent4_review_polarity)+",sent4_review_subjectivity="+str(sent4_review_subjectivity)+", sent5_title_polarity="+ str(sent5_title_polarity)+", sent5_review_polarity="+ str(sent5_review_polarity)+" where review_rand_unique_id = '"+ review_rand_unique_id +"';"
        with engine.connect() as con1:
            con1.execute(text(update_stmt))
            con1.commit()
            con1.close()
	
	
    
