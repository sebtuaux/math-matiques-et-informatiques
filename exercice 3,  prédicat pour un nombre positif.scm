;Question 1 :

;;; positif? : Nombre -> bool
;;; (positif? n): retourne vrai ssi, n est strictement positif
(define (positif? n)
  (> n 0))

;Question 2 :

;;; nombre-positif? : Valeur -> bool
;;; (nombre-positif? x): retourne vrai ssi, n est un nombre et est strictement positif 
(define (nombre-positif? x)
  (and (number? x) (positif? n)))