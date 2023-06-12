# pie charts
# recommended less than 5 items

import matplotlib.pyplot as plt

plt.style.use('fivethirtyeight')

# slices = [60, 40, 30 ,20]
# labels = ['Sixty', 'Forty', 'extra1', 'extra2']
# colors = ['blue', 'yellow', 'red', 'green']

slices = [59219, 55466, 47544, 36443, 35917]
labels = ['JavaScript', 'HTML/CSS', 'SQL', 'Python', 'Java']
explode = [0, 0, 0 , 0.1, 0]    # to display exploded out slice

plt.pie(slices, labels = labels, explode = explode, 
        shadow = True, startangle = 90, autopct = '%1.1f%%',
        wedgeprops ={'edgecolor': 'black'})
plt.title('My Awesome Pie Chart')
plt.tight_layout()
plt.show()