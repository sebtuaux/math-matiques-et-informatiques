def Polignac(n,maximum):
    def liste_non_multiple(x,L):
        return [k for k in L if (k%x!=0)]
    def eratosthene(n):
        P=[]
        L=[]
        L = range(2,n+1)
        while L!=[]:
            P.append(L[0])
            L= liste_non_multiple(L[0],L)
        return P
    Premier = eratosthene(maximum)
    for i in range(1,len(Premier)):
        différence= Premier[i]-Premier[i-1]
        if différence ==n:
            print('(',Premier[i-1],' ; ',Premier[i],' ) ')
