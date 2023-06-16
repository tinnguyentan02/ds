import csv
import numpy as np
import pandas as pd
from collections import Counter
from matplotlib import pyplot as plt

plt.style.use("fivethirtyeight")

data = pd.read_csv('files/data.csv')
with open('files/data.csv') as csv_file:
    csv_reader = csv.DictReader(csv_file)   # read csv_file by csv.DictReader

    language_counter = Counter()

    for row in csv_reader:
        language_counter.update(row['LanguagesWorkedWith'].split(';'))
    
    languages = []
    count = []
    for item in language_counter.most_common(10):
        languages.append(item[0])
        count.append(item[1])
    
languages.reverse()
count.reverse()

plt.barh(languages, count)
# plt.xticks(rotation = 'vertical', size  = 10)
# plt.ylabel('Languages')
plt.xlabel('Number of people who use')
plt.title('Most poputer programming languages')
plt.grid(True)
plt.tight_layout()
plt.savefig('img/barh_charts.png')
plt.show()