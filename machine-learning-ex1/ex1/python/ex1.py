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
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

print('Running warmUpExercise ...')
print('5x5 Identity Matrix:')
print(np.identity(5))
wait = input('Program paused. Press enter to continue.')

#======================= Part 2: Plotting =======================

print('Plotting Data...')
data = np.genfromtxt('ex1data1.csv',delimiter=',')

X = data[:,0]
y = data[:,1][np.newaxis].T
m = len(y) # number of training examples

# Plot Data
plt.plot(X, y, 'rx')
plt.show()

wait = input('Program paused. Press enter to continue.')

#=================== Part 3: Cost and Gradient descent ===================
def computeCost(X, y, theta):
    predictions = np.matmul(X, theta) #predictions of hypothesis on all m examples
    sqrErrors = np.matmul(np.transpose(predictions-y), (predictions-y)) #squared errors
    J = 1/(2*m)*sqrErrors
    return J

def gradientDescent(X, y, theta, alpha, iterations):
    J_history = np.zeros((iterations))
    for iter in range(iterations):
        predictions = np.matmul(X, theta) #predictions of hypothesis on all m examples
        theta = theta - alpha*np.matmul((predictions-y).T, X).T/m
        J_history[iter] = computeCost(X, y, theta)
    return theta, J_history

Xb = np.c_[np.ones(len(X)), X]   # Add a column of ones to x
theta = np.zeros((2,1))         # initialize fitting parameters

# Some gradient descent settings
iterations = 1500
alpha = 0.01

print('Testing the cost function ...')
# compute and display initial cost
J = computeCost(Xb, y, theta)
print('With theta = [0 ; 0]\nCost computed = ', J)
print('Expected cost value (approx) 32.07')

# further testing of the cost function
J = computeCost(Xb, y, [[-1], [2]])
print('\nWith theta = [-1 ; 2]\nCost computed = {}'.format(J))
print('Expected cost value (approx) 54.24\n')

wait = input('Program paused. Press enter to continue.')

print('\nRunning Gradient Descent ...\n')
# run gradient descent
theta, J_history = gradientDescent(Xb, y, theta, alpha, iterations)

# print theta to screen
print('Theta found by gradient descent:');
print(theta);
print('Expected theta values (approx)');
print(' -3.6303\n  1.1664\n\n');

# Plot the linear fit
plt.plot(X, y, 'rx')
plt.plot(X, np.matmul(Xb, theta), '-')
plt.show()

# Predict values for population sizes of 35,000 and 70,000
predict1 = np.matmul([1, 3.5], theta)
print('For population = 35,000, we predict a profit of {}'.format(predict1*10000))
predict2 = np.matmul([1, 7], theta)
print('For population = 70,000, we predict a profit of {}'.format(predict2*10000))

wait = input('Program paused. Press enter to continue.')

# ============= Part 4: Visualizing J(theta_0, theta_1) =============
print('\nVisualizing J(theta_0, theta_1) ...\n')

# Grid over which we will calculate J
theta0_vals = np.linspace(-10, 10, 100)
theta1_vals = np.linspace(-1, 4, 100)

# initialize J_vals to a matrix of 0's
J_vals = np.zeros((len(theta0_vals), len(theta1_vals)))

# Fill out J_vals
for i,theta0 in enumerate(theta0_vals):
    for j,theta1 in enumerate(theta1_vals):
        t = np.asarray([[theta0], [theta1]])
        J_vals[i,j] = computeCost(Xb, y, t)

# Surface plot
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
theta0_vals, theta1_vals = np.meshgrid(theta0_vals, theta1_vals)
ax.plot_surface(theta0_vals, theta1_vals, J_vals)
plt.show()

# Contour plot
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
ax.contour(theta0_vals, theta1_vals, J_vals)
plt.show()
