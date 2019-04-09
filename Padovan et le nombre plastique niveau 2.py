def main(n):
    def padovan(k):
        if k<3:
            return 1
        else:
            return padovan(k-2) + padovan(k-3)
    P=[]
    for k in range(n+1):
        P.append(padovan(k))
    return P
