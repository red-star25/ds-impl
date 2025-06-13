arr = ['a', 'c', 'f', 'g', 'h', 'k', 'n', 's', 'w', 'z']
key = 'c'

def searchNextLetter(arr, key):
    start = 0
    N = len(arr)
    end = N - 1
    ans = ''

    while start <= end:
        mid = (start + end) // 2

        if arr[mid] == key:
            return arr[mid + 1]
        
        if ord(arr[mid]) < ord(key):
            start = mid + 1
        
        if ord(arr[mid]) > ord(key):
            ans = arr[mid]
            end = mid - 1
    
    return ans

print(searchNextLetter(arr,key))
