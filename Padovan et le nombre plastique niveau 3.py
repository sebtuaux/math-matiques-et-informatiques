def main(n):
    import scipy as s
    
    def plastique():
        return pow(((9+s.sqrt(69))/18),1/3) + pow(((9-s.sqrt(69))/18),1/3)
    plastique=plastique()
    
    def padovan(n):
        if n<3:
            return 1
        else:
            return padovan(n-2) + padovan(n-3)
    def R(k):
        return ( padovan(k)/padovan(k-1) ) - plastique
    P=[]
    for k in range (1,n+1):
        P.append(R(k))
    return P