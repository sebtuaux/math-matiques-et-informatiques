;;; somme-des-chiffres : nat -> int
;;; (somme-des-chiffres n) rend la somme des chiffres d'un entier naturel n
(define (somme-des-chiffres n)
  (if ( = n 0)
      0
      ( + ( somme-des-chiffres (quotient n 10) ) (remainder n 10)   )))

;;; existe-chiffre? : nat/<=0 et >=9/ * nat -> bool
;;; (existe-chiffre? c n) rend vrai ssi c apparaît dans l'écriture en base de 10 de n
(define (existe-chiffre? c n)
  (if (= c (remainder n 10))
      ( existe-chiffre? c (quotient n 10) ) 
      
   
      
      
      
      