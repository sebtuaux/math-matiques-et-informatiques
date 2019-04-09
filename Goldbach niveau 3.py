def generation():
    def Goldbach(n):
        def est_premier(x):
            if x>1:
                A=int(pow(x,0.5))
                for k in range(2,A+1):
                    if x%k==0:
                        return False
                return True
            return False
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
        M=0
        if n%2!=0:
            if est_premier(n-2):
                M+=1
        else:
            Premier = eratosthene(n)
            moitie = n/2
            if est_premier(moitie):
                M+=1
            i,j=0,len(Premier)-1
            while not abs(i-j)<2:
                Somme=Premier[i] + Premier[j]
                if Somme < n:
                    i+=1
                elif Somme== n:
                    M+=1
                    i+=1
                    j-=1
                else:
                    j-=1
        return M
    Max,K=0,5
    for i in range(5,500):
        x=Goldbach(i)
        if x>Max:
            Max=x
            K=i
    return K