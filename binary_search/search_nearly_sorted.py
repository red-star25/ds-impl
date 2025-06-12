arr = [5,10,20,30,40]

def searchNearlySorted(arr, target=20):
    start = 0
    end = len(arr) - 1

    while start < end:
        mid = (start + end) // 2

        if arr[mid] == target:
            return mid
        elif (mid-1 >= start) and arr[mid-1] == target:
            return mid - 1
        elif (mid+1 <= end) and arr[mid+1] == target:
            return mid + 1
        
        if arr[mid] < target:
            start = mid + 1
        elif arr[mid] > target:
            end = mid - 1
        
        return mid

print(searchNearlySorted(arr=arr))