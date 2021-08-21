# -*- coding: utf-8 -*-
"""
Euler's method

"""

import numpy as np
import matplotlib.pyplot as plt


# Define basic data
x0=0
y0=1
xf=1
n=3
deltax=(xf-x0)/(n-1)

# Define x-values 
x=np.linspace(x0,xf,n)

# Initializing array for y-values
y=np.zeros([n])

# For loop for Euler's method
y[0]=y0
for i in range (1,n):
    y[i]=deltax*(y[i-1])+y[i-1]
    
# Printing the data   
for i in range(n):
    print(x[i],y[i])

# Plotting the solution
plt.plot(x,y) 
plt.xlabel("Value of x") 
plt.ylabel("Value of y") 
plt.title("Approximate solution using Euler's method")
plt.show()   