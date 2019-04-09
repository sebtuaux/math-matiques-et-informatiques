def padovan(n):
    if n<3:
        return 1
    else:
        return padovan(n-2) + padovan(n-3)