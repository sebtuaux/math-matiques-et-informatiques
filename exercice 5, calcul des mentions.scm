;;; mention : nat/<= 20/ -> str
;;; (mention note) rend la mention correspondant à la note "n"
(define (mention note)
  (if (< note 12)
      (if (< note 10)
          "Eliminé"
          "Passable")
       (if (>= note 14)
           (if (>= note 16)
               "TB"
               "B")
       "AB")  ))


(define (mention2 note)
  (cond ( (< note 10) "Eliminé")
        ( (< note 12) "Passable")
        ( (< note 14) "AB")
        ( (< note 16) "B")
        (else "TB")))
          
 