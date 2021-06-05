#Return List of the row of the coefficiant of Binomail Series

def pascal(n):
    ar = [1]
    if n == 0:
        return ar
    if n > 1:
        lis = pascal(n-1)
        print(lis)
        for i in range(1,len(lis)):
            ar.append(lis[i-1] + lis[i])
    ar.append(1)   
    return ar


#print(pascal(15))
