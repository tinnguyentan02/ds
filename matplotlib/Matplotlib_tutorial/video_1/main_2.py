# bar charts

from matplotlib import pyplot as plt 
from collections import Counter
import numpy as np
import pandas as pd
import csv

plt.style.use('fivethirtyeight')

# with open('data.csv') as csv_file:
#     csv_reader = csv.DictReader(csv_file)
    
#     language_counter = Counter()
#     for row in csv_reader:
#         language_counter.update(row['LanguagesWorkedWith'].split(';'))

data = pd.read_csv('data.csv')
print(data)
ids = data['Responder_id']
lang_responses = data['LanguagesWorkedWith']

language_counter = Counter()

for response in lang_responses:
    language_counter.update(response.split(';'))

language = []
popularity = []

for item in language_counter.most_common(15):
    language.append(item[0])
    popularity.append(item[1])

language.reverse()
popularity.reverse()
plt.barh(language, popularity)
# plt.xticks(language, rotation = 'vertical')
plt.ylabel('Programming Languages')
plt.xlabel('Number of people who use')
# plt.title('Median Salary (USD) by Age')
plt.tight_layout()
# plt.show()