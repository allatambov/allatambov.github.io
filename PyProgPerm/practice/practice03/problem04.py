from math import log

def my_log(L):
    """
    Parameters:
        L, a list of float or integer numbers.
    Returns:
        a list of natural logarithms
        (None for non-postivie values).
    """
    R = []
    for i in L:
        if i > 0:
            R.append(log(i))
        else:
            R.append(None)
    return R

print(my_log([1, 3, 2.5, -1, 9, 0, 2.71]))