def population():
    p=3000
    A=p*2
    N=0
    while p<A:
        p=p*1.05-50
        N+=1
    return N
    
