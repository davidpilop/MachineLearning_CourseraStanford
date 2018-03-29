""" Machine Learning Online Class - Exercise 1: Linear Regression

Instructions
------------

This file contains code that helps you get started on the
linear exercise. You will need to complete the following functions
in this exericse:

    warmUpExercise.m
    plotData.m
    gradientDescent.m
    computeCost.m
    gradientDescentMulti.m
    computeCostMulti.m
    featureNormalize.m
    normalEqn.m
    
For this exercise, you will not need to change any code in this file,
or any other files other than those mentioned above.

x refers to the population size in 10,000s
y refers to the profit in $10,000s
"""

"""
Initialization
clear ; close all; clc
"""
#==================== Part 1: Basic Function ====================
import matplotlib.pyplot as plt
from scipy import stats
import numpy as np
import os,sys
import csv

print('Running warmUpExercise ...')
print('5x5 Identity Matrix:')
print(np.identity(5))
wait = input('Program paused. Press enter to continue.')

#======================= Part 2: Plotting =======================

print('Plotting Data...')
data = csv.reader(open('ex1data1.csv', 'r'), delimiter=",", quotechar='|')
X, y = [], []

for row in data:
    X.append(row[0])
    y.append(row[1])

plt.plot(X, y, 'ro')
plt.show()

wait = input('Program paused. Press enter to continue.')

#=================== Part 3: Cost and Gradient descent ===================
def computeCost(X, y, theta):
    print(X.shape)
    print(type(X))
    predictions = np.dot(X, theta.T) #predictions of hypothesis on all m examples
    #sqrErrors = (predictions-y)*(predictions-y) #squared errors
    #J = 1/(2*m)*sqrErrors
    return predictions

X = np.c_[np.ones(len(X)), X]   # Add a column of ones to x
theta = np.zeros((2,1))           #initialize fitting parameters

# Some gradient descent settings
iterations = 1500
alpha = 0.01

print('Testing the cost function ...')
# compute and display initial cost
J = computeCost(X, y, theta)
print('With theta = [0 ; 0]\nCost computed = ', J)
print('Expected cost value (approx) 32.07')
