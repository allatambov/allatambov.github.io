def factorial(n):
    """
    Parameters:
         n, an integer
    Returns:
         factorial of n.
    """
    f = 1
    for i in range(2, n + 1):
        f *= i
    return f

def binom_coef(n, k):
    coef = factorial(n) // (factorial(k) * factorial(n-k))
    return coef

def binom_prob(n, k, p):
    P = binom_coef(n, k) * p ** k * (1-p) ** (n-k)
    return P

#print(binom_prob(10, 2, 0.5))