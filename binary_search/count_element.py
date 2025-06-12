from first_last_occ import findFistOcc, findLastOcc

arr = [2,4,10,10,10,20]
element = 10

def countElement(arr):
    i1 = findFistOcc(arr)
    i2 = findLastOcc(arr)
    return i2 - i1 + 1


print(countElement(arr=arr))