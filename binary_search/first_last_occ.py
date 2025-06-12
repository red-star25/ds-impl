arr = [2,4,10,10,10,18,20]
element = 10

def findFistOcc(arr):
    start = 0
    end = len(arr) - 1
    ans = -1

    while start <= end:
        mid = start + (end - start) // 2

        if arr[mid] == element:
            end = mid - 1
            ans = mid
        
        elif arr[mid] < element:
            start = mid + 1

        elif arr[mid] > element:
            end = mid - 1
    
    return ans

findFistOcc(arr=arr)

def findLastOcc(arr):
    start = 0
    end = len(arr) - 1
    ans = -1

    while start <= end:
        mid = start + (end - start) // 2

        if arr[mid] == element:
            start = mid + 1
            ans = mid
        
        elif arr[mid] < element:
            start = mid + 1

        elif arr[mid] > element:
            end = mid - 1
    
    return ans

findLastOcc(arr=arr)