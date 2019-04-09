def magique(n):
   '''int -> LISTE[int]
   retourne la liste des nombres magiques à n chiffres'''
   
   def s_chiffre(n):
       ''' int -> int
       retourne la somme des chiffres d'un nombre'''
       if(n==0):
           return 0
       return(s_chiffre(n//10) + n%10)

   def p_chiffre(n):
        '''int -> int
        retourne le produit des chiffres d'un nombre'''
        if(n==0):
            return 1
        return(p_chiffre(n//10) * n%10)
    
   def ps_n(n):
      '''int -> int * int
      retourne la somme et le produit des chiffres d'un nombre dans 
      un couple'''
      if(n==0):
         return (0,1)
      return( ( ( ps_n(n//10))[0] + n%10) , ( ( ps_n(n//10))[1] * (n%10) ) )

   def est_magique(n):
      ''' int -> LISTE
      retourne une liste contenant n, si il est magique, sinon
      une liste vide'''
      if( (ps_n(n))[0] == (ps_n(n))[1]):
         return 1
   
   L=[]
   for loop in range(10,n+1):
      if (est_magique(loop)):
         L.append(loop)
   return L
        