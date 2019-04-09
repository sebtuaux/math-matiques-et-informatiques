def encadrement():
    E=float(input("Saisir l'amplitude maximale E :   "))
    print()
    h=E/2
    N= 1/h
    if int(N) <N:
        N= int(N) + 1
    else:
        N=int(N)
    print('Voici le nombre de rectangle utilisés :     ',N)
    def f(x):
        return( 1/(1+x*x))
    def K(h):
        S=0
        for k in range(1,N):
            S+= h*f(k*h)
        return S
    print("Voici un encadrement de l'intégrale I : ")
    A=h*f(1) + K(h)
    B=h*f(0)+ K(h)
    print( 4*A,' < PI  <  ',4*B ,'\n')
    print("Voici l'amplitude de l'encadrement obtenue :  ")
    print('d = ',2*h)

