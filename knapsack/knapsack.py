t = [[-1 for _ in range(1002)] for _ in range(1002)]

def knapsack(weights, values, n, w):
    if n == 0 or w == 0:
        return 0

    if t[n][w] != -1:
        return t[n][w]

    if weights[n-1] > w:
        t[n][w] = knapsack(weights, values,n-1, w)
    
    elif weights[n-1] <= w:
        t[n][w] =  max(
            values[n-1] + knapsack(weights,values,w-weights[n-1], n-1),
            knapsack(weights,values,n-1,w)
        )
    return t[n][w]


print(knapsack(weights=[1,3,4], values=[15,20,30], n=3, w=4))