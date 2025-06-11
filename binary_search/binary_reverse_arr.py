arr = [20,15,13,10,8,6,5,4,2,1]
element = 2
def binary_search(arr):
    start = 0
    end = len(arr) - 1

    while start <= end:
        mid = start + ((end - start) // 2)

        if arr[mid] == element:
            return mid
        
        elif arr[mid] > element:
            start = mid + 1
        
        elif arr[mid] < element:
            end = mid - 1
    
    return -1

print(binary_search(arr))