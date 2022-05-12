def str_lower(text):
    """
    Parameters:
        text, a string.
    Returns:
        a list of words, all lowercase.
    """
    new = text.lower()
    return new.split()

print(str_lower("В лесу родилась ёлочка В лесу она росла"))