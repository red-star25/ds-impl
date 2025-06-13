arr = [1, 2, 4, 6, 10, 12, 14]
element = 7

def searchFloor(arr, element):
    start = 0
    N = len(arr)
    end = N - 1
    ans = -1

    while start <= end:
        mid = (start + end) // 2

        if arr[mid] == element:
            return arr[mid] 

        if arr[mid] > element:
            end = mid - 1
        
        elif arr[mid] < element:
            ans = arr[mid]
            start = mid + 1
    
    return ans


print(searchFloor(arr,element))

arr = [1, 2, 4, 6, 10, 12, 14]
element = 7

def searchCeil(arr, element):
    start = 0
    N = len(arr)
    end = N - 1
    ans = -1

    while start <= end:
        mid = (start + end) // 2

        if arr[mid] == element:
            return arr[mid] 

        if arr[mid] < element:
            start = mid + 1
        
        elif arr[mid] > element:
            ans = arr[mid]
            end = mid - 1
    
    return ans


print(searchCeil(arr,element))