import matplotlib.pyplot as plt
import csv

data = csv.reader(open('ex1data1.csv', 'r'), delimiter=",", quotechar='|')
column1, column2 = [], []

for row in data:
    column1.append(row[0])
    column2.append(row[1])

plt.plot(column1, column2, 'ro')
plt.show()

print(column1)
print(column2)
