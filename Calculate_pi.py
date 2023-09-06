import math

#Calculating through Archemedian Method
def calculate_pi(n):
    hex_sides = 6
    side = 1
    for i in range(1,n):
        half_side = side/2
        a = math.sqrt( (1 - half_side**2))
        b = 1-a
        periM = hex_sides*side
        new_side = math.sqrt( (half_side**2 +  b**2))
        #print(hex_sides , side , half_side, a,b,new_side,periM)
        Pi = periM/2
        hex_sides = hex_sides * 2
        side = new_side
    return Pi
#Enter Number of times we need to iter 
#Note: More the Number of Count Better the Accuracy of the Value Pi
print(calculate_pi(10))
