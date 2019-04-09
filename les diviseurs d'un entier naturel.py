def diviseurs():
    def diviseur(n):
        D=[1]
        m=int(n/2)
        for k in range(2,m+1):
            if n%k ==0:
                D.append(k)
        D.append(n)
        return D
    
    n=1
    D=[]
    while len(diviseur(n))!=15:
        n+=1
        D=diviseur(n)
    print(n)
    print(D)
   