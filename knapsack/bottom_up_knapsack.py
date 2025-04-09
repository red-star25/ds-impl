'''
Step 1: Matrix Initialize karna
Hum ek table banate hain t[n+1][W+1] size ka jisme sab value pehle 0 hoti hai.

Rows = items (0 se leke n tak)
Columns = capacity (0 se leke W tak)
Ye table help karega hume har subproblem ka answer yaad rakhne me (bottom-up DP style)

 Step 2: Table bharna (Choice diagram ki coding)
Har item ke liye (i) aur har capacity ke liye (j):

✅ Agar item ka weight chhota ya barabar hai capacity se:

t[i][j] = max(
    include karne ka fayda = val[i-1] + t[i-1][j - wt[i-1]], (ye line ka matlab hai, Current item ka value + (usko lene ke baad bachi hui capacity me best kya le sakte hain))
    exclude karne ka fayda = t[i-1][j]
)

❌ Agar item ka weight zyada hai:

t[i][j] = t[i-1][j]  # matlab sirf exclude karna padega

 Step 3: Final Answer
Final answer hota hai last cell me:
t[n][W] → maximum value jo tum knapsack me le jaa sakte ho.
'''

def knapSack(W, wt, val, n):
    # Step 1: Table initialize karo sab 0 se
    t = []
    for _ in range(n+1):
        row = [0] * (W + 1)
        t.append(row)
    
    for i in range(n+1):
        for j in range(W+1):
            if wt[i-1] <= j:
                t[i][j] = max(
                    val[i-1] + t[i-1][j - wt[i-1]],
                    t[i-1][j]
                )
            elif wt[i-1] > j:
                t[i][j] = t[i-1][j]
    return t[n][W]

print(knapSack(W=5, wt=[1, 2, 3], val=[10, 15, 40], n=3))
        
        