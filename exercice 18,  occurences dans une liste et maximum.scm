;;; nombre-occurences : int* LISTE -> int
;;; (nombre-occurences x L) retourne le nombre d'occurences de 'x' dans 'L'.
(define  (nombre-occurences x L)
  (if (pair? L)
     (let((nb (nombre-occurences x (cdr L) )))
       (if (= (car L) x)
          (+ 1  nb )   
          (+ 0 nb)))
     0))


;;; max-liste : LISTE/non-vide -> int
;;; (max-liste L) retourne la valeur du maximum de la liste
(define (max-liste L)
  (if (pair? (cdr L))
      (if (<= (car L) (car (cdr L) ) )
          (max-liste (cdr L) )
          (max-liste (cons  (car L) (cdr (cdr L) ) )))
      (car L))) 

;;; nombre-de-max :  LISTE/non-vide -> int
;;; (nombre-de-max L) retourne le nombre d'occurences du maximum de la liste.
(define (nombre-de-max L)
  (nombre-occurences (max-liste L) L))