'''
arr = [2,3,7,8,10]
sum = 11

Return True/False if the given array contains a subset which equals to given sum
'''
def subetSum(arr, sum, n):
    t = []
    for _ in range(n+1):
        row = [False] * (sum + 1)
        t.append(row)
    
    for i in range(n+1):
        for j in range(sum+1):
            if i == 0:
                t[i][j] = False
            if j == 0:
                t[i][j] = True

    for i in range(1, n+1):
        for j in range(1, sum+1):
            if arr[i-1] <= j:
                t[i][j] = t[i-1][j - arr[i-1]] or t[i-1][j]
            else:
                t[i][j] = t[i-1][j]
    return t[n][sum]

print(subetSum(arr=[2,3,7,8,10], sum=11, n=5))