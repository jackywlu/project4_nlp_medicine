### Introduction

For the fourth project of the [Metis Data Science Bootcamp](https://www.thisismetis.com/), I scraped the r/medicine subreddit from January to July of 2020. I used Natural Language Processing (NLP) techniques such as topic modeling and sentiment analysis to analyze the post text. 

The coronavirus pandemic has upended everybody's lives. It has especially impacted the healthcare community, who have to fight the pandemic on the front-lines and put their lives at risk everyday at work. How has the pandemic shaped discourse in the healthcare community? How are medical workers feeling?

### Individual Contributor

* [Jacky Lu](https://github.com/jackywlu)

### Project Motivation

Inspiration: https://www.propublica.org/article/nobody-accurately-tracks-health-care-workers-lost-to-covid-19-so-she-stays-up-at-night-cataloging-the-dead

This Propublica articles describes how healthcare workers are losing their lives to covid-19, but their deaths aren't being properly attributed to the virus. Why are the sacrifices of the medical community being treated as the norm?

I wanted to explore more deeply how the Coronavirus pandemic has impacted the medical community. As a former biology major, many of my former classmates and close friends currently work in the medical community as medical students and residents. They are expected to work at the front lines of the pandemic working in unsafe, stressful conditions. They are challenged by everyday citizens who refuse to wear masks and socially distance. They are underpaid, overworked, and pressured into working in a system that doesn't prioritize their own safety.

Those in the medical community are expected to be resilient, but is there a limit to how much they can take? How much pressure has been put onto each member and how are they coping? 

I wanted to explore their feelings, their thoughts, and their worries with my project.

### Project Submission Directory

Project 4 Web Scraping

* Contains code to scrape reddit and store r/medicine posts to a SQL database

Project 4 EDA

* Contains code to explore how many times the pandemic related words are mentioned and what the top nouns written per month

Project 4 Topic Modeling

* Contains code to do topic modeling and sentiment analysis on the reddit posts

reddit_medicine SQL File

- Contains code to create a new database and table to store my scraped reddit posts

### Data Science Analysis

###### Data Collection

For my data, I scraped the top 200 (by number of comments) reddit posts made on the [medicine subreddit](https://www.reddit.com/r/medicine/) during January to July of 2020. This data was stored in a PostgreSQL database for further analysis.

###### Exploratory Data Analysis

I want to explore the following questions:

1) How often are the terms "coronavirus", "pandemic", and "covid" mentioned every month of 2020?

2) What are the top 5 nound used in reddit r/medicine posts each month of 2020?

The terms "coronavirus", "pandemic", and "covid" were not mentioned a lot in January and February. Their usage spiked in March when the pandemic started to take hold in the U.S. and other countries, necessatating stay at home orders. Usage dipped slightly from April to June, likely due to fatigue and hopefulness the pandemic would be over soon. However, usage spiked again in July. This is probably due to concerns over school reopenings and a second wave of infections.

Unsurprisingly, the most used noun in March through July was the word "covid". The top used nouns in January and February were more typical: "work", "health", and "doctor". However, discourse soon shifted to include use of the word "masks" and "test" before shifting back to more work related topics. Interestingly, one of the top nouns said in June and July was "anyone". This may signify that medical professionals are feeling increasingly alone and wondering if there are others who can emphatize with their situation or share their feelings.

###### Topic modeling

After trying TruncatedSVD and NMF, I decided to use [LDA](https://radimrehurek.com/gensim/models/ldamodel.html) or Latent Dirichlet Allocation, for topic modeling. My final model has 6 topics. I choose 6 because my pyLDA visualization showed my topic didn't overlap too much. Additional, it had a higher coherence score.

The 6 topics I gathered from my LDA model are:

1. Workplace (keywords: patient, hospital, time, hours, care, work)
2. School & Training (keywords: physician, training, school, MD, residency)
3. Coronavirus Precautions (keywords: patients, risk, SARS, coronavirus, clinic, masks)
4. Healthcare System (keywords: healthcare, system, providers, medicare, insurance)
5. Coronavirus Treatment (keywords: infection, dose, blood, serum, cell)
6. Medical Studies (keywords: evidence, results, regeneration, spine, immunity)

###### Sentiment Analysis

I used [VADER sentiment](https://github.com/cjhutto/vaderSentiment) on my reddit posts. VADER sentiment analysis analyzes the polarity and intensity of sentiments expressed in social media. I choose VADER sentiment over other forms of sentiment analysis because VADER sentiment is specifically trained on social media data. 

In particular, I was interested in the VADER compound score. The compound score is a normalized sum of the valence scores of each word in the lexicon. The score ranges between -1 (most negative) to +1 (most positive). It is described as being the "most useful metric if you want a single unidimensional measure of sentiment for a given sentence".

I looked at the mean compound sentiment per month. I found that sentiment was more positive between January and Febuary, It dipped in March, stayed relatively constant, and then started to increase again in July. I think this sentiment mirrors the pandemic timeline. The impact of the pandemic really hit the United States (which likely has the most r/medicine users) in March and continued its impact through the spring. I hypothesize the rise in sentiment during July may have to do with hope that states would reopen safely and that there wouldn't be a second wave of infections. I think it would be interesting to continue this project for the rest of 2020 and monitor how sentiment continues to change over the course of the pandemic.

### Additional Notes

###### Techniques

* API Data Collection
* SQL Database Storage
* Natural Language Processing
  * Text Pre-Processing
    * Lemmatization
    * Stemming
    * Tokenization
    * Vectorizing
  * Topic Modeling
    * SVD
    * NMF
    * LDA
  * Sentiment Analysis

###### Programs & Packages

* Gensim
* Jupyter Notebook

* Matplotlib
* NLTK
* Numpy
* Pandas
* Praw
* Psycopg2
* pyLDAvis
* Seaborn
* Scikit-learn
* Spacy
* TextBlob
* VaderSentiment

###### Languages

* PostgreSQL
* Python



References:

> **Hutto, C.J. & Gilbert, E.E. (2014). VADER: A Parsimonious Rule-based Model for Sentiment Analysis of Social Media Text. Eighth International Conference on Weblogs and Social Media (ICWSM-14). Ann Arbor, MI, June 2014.**