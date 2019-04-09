def Polignac(n,debut,fin):
    def est_premier(x):
        if x>1:
            A=int(pow(x,0.5))
            for k in range(2,A+1):
                if x%k==0:
                    return False
            return True
        return False
    def premier(debut,fin):
        P=[]
        for nombre in range(debut,fin+1):
            if est_premier(nombre):
                P.append(nombre)
        return P
    L=premier(debut,fin)
    for i in range(1,len(L)):
        différence=L[i]-L[i-1]
        if différence ==n:
            print('(',L[i-1],' ; ',L[i],' ) ')