# plot charts

from matplotlib import pyplot as plt 
import numpy as np

plt.style.use('fivethirtyeight')
# Median Developer Salaries by Age
dev_x = [25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35]
dev_y = [38496, 42000, 46752, 49320, 53200,
         56000, 62316, 64928, 67317, 68748, 73752]

# Median Python Developer Salaries by Age
py_dev_x = [25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35]
py_dev_y = [45372, 48876, 53850, 57287, 63016,
            65998, 70003, 70000, 71496, 75370, 83640]

x_indexes = np.arange(len(dev_x))
width = 0.35

plt.bar(x_indexes - width, dev_y, width = width, label ='All Devs')
plt.bar(x_indexes, py_dev_y, width = width, label = 'Python')

plt.xlabel('Ages')
plt.ylabel('Median Salary (USD)')
plt.title('Median Salary (USD) by Age')
plt.tight_layout()
plt.show()