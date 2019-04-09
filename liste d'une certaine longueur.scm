;;; lg? : nat * LISTE[valeur] -> bool
;;; (lg? n L) vérifie si la liste est de longueur "n".
(define (lg? n L)
  (if (pair? L)
      (if (>= n 1)
          (lg? (- n 1) (cdr L))
          #f)
      (if (= n 0) #t #f)))
