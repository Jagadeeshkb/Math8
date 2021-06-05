import math
from math import *
import matplotlib.pyplot as plt
import numpy as np
#This Function will we give a plot with functions that are available in math library.


#For list of available function use dir(math)

def graph_math(start , end , by , func ):
    dummy = str(func)
    dum = dummy.split()[2][:-1]
    lis = dir(math)
    if dum in lis:
        a = np.linspace(start,end,by)
    
        b= []
        for i in a:
            b.append(func(i))
        plt.plot(a,b , label = str(dum))
        plt.legend(loc='best')
       
    else:
        raise NameError('Not Applicable function')
USAGE:
#start and end are just arguments for real line.. and by is increment value
#between the range.

#pass function that are available in the math module
#graph_math(-10 , 10 , 1 , cos)
