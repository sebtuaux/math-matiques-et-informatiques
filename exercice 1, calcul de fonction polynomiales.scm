;;Question 1 : 


;;; polynomiale: Nombre * Nombre * Nombre * Nombre * Nombre -> Nombre
;;; (polynomiale a b c d x) rend la valeur de la fonction qui à x associe a*x^3 + b*x^2 + c*x + d

;;; 1 ère solution : calcul avec la forme développée du polynome.
(define (polynomiale1 a b c d x) 
  (let* ( (x2 (* x x) )
          (x3 (* x2 x) ) )
    (+ (* a x3) (* b x2) (* c x) d )))
;;; 2 ème solution : calcul en utilisant le schéma de horner, en effet : a*x^3 + b*x^2 + c*x + d = x(x(ax + b)+c)+d
(define (polynomiale2 a b c d x)
 (+ (* (+ (* (+ (* a x) b) x) c) x) d)   )


;;Question 2 :


;;; polynomiale-carre:  Nombre * Nombre * Nombre * Nombre -> Nombre
;;; (polynomiale-carre a b c x) rend la valeur de la fonction qui à x associe a*x^4 + b*x^2 + c

;;; 1ère solution : calcul avec la forme développée du polynome
(define (polynomiale-carre1 a b c x) 
  (let* ( (x2 (* x x) )
          (x4 (* x2 x2) ) )
    (+ (* a x4) (* b x2) c)))
;;; 2 ème solution : calcul en utilisant le schéma de horner, en effet : a*x^4 + b*x^2 + c = x( x( x(ax + b) ) ) + d
(define (polynomiale-carre2 a b c x)
 (+ (* x (* x (+ (* x (* a x) ) b) ) ) c)    )