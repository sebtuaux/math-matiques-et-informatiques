;;; intervalle-croissant : int * int -> LISTE[int]
;;; (intervalle-croissant a b) rend la liste, rangée en ordre croissant, des entiers qui sont supérieurs ou égaux à 'a' et inférieurs ou égaux à 'b'
(define (intervalle-croissant a b)
  (if (<= a b) 
      (cons a  (intervalle-croissant (+ a 1) b) )
      (list )))

;;; intervalle-decroissant : int * int -> LISTE[int]
;;; (intervalle-decroissant a b) rend la liste, rangée en ordre décroissant, des entiers qui sont supérieurs ou égaux à 'a' et inférieurs ou égaux à 'b'
(define (intervalle-decroissant a b)
  (if (<= a b) 
      (cons b  (intervalle-decroissant a (- b 1) ) )
      (list )))

;;; intervalle-par-pas : int * int * int -> LISTE[int]
;;; (intervalle-par-pas a b k) rend la liste des entiers obtenus en comptant de 'k' en 'k' à partir de 'a' jusqu'à 'b
;;; ERREUR lorsque le pas 'k' est nul.
(define (intervalle-par-pas a b k)
  ;;; aux-pas-positif : int * int * int/> 0/  -> LISTE[int]
  ;;; aux-pas-positif a b k) rend la liste des entiers, obtenus en comptant de 'k' en 'k' à partir de 'a' jusqu'à 'b'
  (define (aux-pas-positif a b k)
    (if (<= a b) 
          (cons a  (aux-pas-positif (+ a k) b k) )
          (list )))
  ;;; aux-pas-negatif : int * int * int/< 0/  -> LISTE[int]
  ;;; aux-pas-negatif a b k) rend la liste des entiers, obtenus en comptant de 'k' en 'k' à partir de 'a' jusqu'à 'b'
  (define (aux-pas-negatif a b k)
  (if (>= a b) 
      (cons a (aux-pas-negatif (+ a k) b k ) )
      (list )))
  
(cond ( (> k 0) (aux-pas-positif a b k))
      ( (< k 0) (aux-pas-negatif a b k))
      (else (erreur 'intervalle-par-pas "pas nul"))))
  