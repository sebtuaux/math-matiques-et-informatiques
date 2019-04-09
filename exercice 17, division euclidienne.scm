;Question 1:
;;; quotient-et-reste: nat * nat/>0/ -> COUPLE[nat nat]
;;; (quotient-et-reste a b) renvoie le couple formé du quotient et du reste de la division euclidienne de a par b
(define (quotient-et-reste a b)
  (list (quotient a b) (remainder a b)))

;Question 2:
;;; quotient-et-reste2: nat * nat/>0/ -> COUPLE[nat nat]
;;; (quotient-et-reste2 a b) renvoie le couple formé du quotient et du reste de la division euclidienne de a par b
(define (quotient-et-reste2 a b)
  (if (>= a b)
      (let ((qr (quotient-et-reste2 (- a b) b)))
        (cons (+ (car qr) 1) (cdr qr)))
      (list 0 a)))

;Question 3:
;;; quotient-et-reste3: nat * nat/>0/ -> COUPLE[nat nat]
;;; (quotient-et-reste3 a b) renvoie le couple formé du quotient et du reste de la division euclidienne de a par b
(define (quotient-et-reste3 a b)
  (if (>= a b)
      (let* ((qr (quotient-et-reste3 (- a 1) b)) 
             (q (car qr)) 
             (r (cadr qr)) )
        (if (< r (- b 1))
            (list q (+ 1 r))
            (list (+ q 1) 0) ) )
      (list 0 a)))
       
            