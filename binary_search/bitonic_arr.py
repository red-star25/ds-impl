arr = [1,3,8,12,4,2]

def bitonicElement(arr):
    start = 0
    N = len(arr)
    end = N - 1

    if N == 1:
        return arr[0]


    while start <= end:
        mid = start + ((end - start) // 2)
        

        if mid > 0 and mid < N - 1:
            if arr[mid] > arr[mid - 1] and arr[mid] > arr[mid + 1]:
                return arr[mid]
            
            elif arr[mid - 1] > arr[mid]:
                end = mid - 1
            
            else:
                start = mid + 1
        
        elif mid == 0:
            if arr[0] > arr[1]:
                return arr[0]
            else:
                return arr[1]
        
        elif mid == N - 1:
            if arr[N-1] > arr[N - 2]:
                return arr[N - 1]
            
            else:
                return arr[N - 2]

print(bitonicElement(arr))