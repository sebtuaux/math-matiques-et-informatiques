;;; nombre-pair? : int -> bool
;;; (nombre-pair? n) rend vrai ssi, "n" est pair
(define (nombre-pair? n)
  (= (remainder n 2) 0))


;;; divise? : nat/non nul/  * int -> bool
;;; (divise? m n) rend vrai ssi "m" divise "n"
(define (divise? m n)
  (= (remainder n m) 0))


;;; nombre-pair2? : int -> bool
;;; (nombre-pair2? n) rend vrai ssi, ce nombre est pair
(define (nombre-pair2? n)
  (divise? 2 n))


;;; quotient-si-divise:  nat/non nul/  * int -> int + #f
;;; (quotient-si-divise m n) rend la division de "n" par "m" si "m" divise "n"
;;; et le booléen faux sinon
(define (quotient-si-divise m n)
  (if (divise? m n) 
      (quotient n m)
      #f))
