;Question 1:
;;; equipe1: -> LISTE[string]
;;;(equipe1) rend l'équipe formée de la monitrice Bea et des enfants Eve, Isa et Luc
(define (equipe1)
  (list "Bea" "Eve" "Isa" "Luc"))
;;; equipe2: -> LISTE[string]
;;;(equipe2) rend l'équipe formée du moniteur Paul et des enfants Bob,Lea,Ali et Jean
(define (equipe2)
  (list "Paul" "Bob" "Lea" "Ali" "Jean"))

;Question 2:
;;; changement-moniteur: string * LISTE[string/non vide/ -> LISTE[string]
;;;(changement-moniteur s E) rend l'équipe obtenue en remplaçant le prénom du moniteur de l'équipe "E" par le nouveau prénom "s"
(define (changement-moniteur s E)
  (cons s (cdr E)))

;Quesion 3:
;;; nouvel-enfant : string * LISTE[string/non vide/ -> LISTE[string]
;;; (nouvel-enfant s E) rend l'équipe obtenue en ajoutant l'enfant s à l'équipe E
(define (nouvel-enfant s E)
  (cons (car E) (cons s (cdr E))))

;Question 4:
;;; prise-encharge: LISTE[string]/non vide/ * LISTE[string]/non vide/ ->  LISTE[string]
;;; (prise-encharge E1 E2) rend l'équipe dont le moniteur est le moniteur de E1 et dont le groupe d'enfants est composé de tous les enfants de E1 et E2
(define (prise-encharge E1 E2)
  (cons (car E1) (append (cdr E1) (cdr E2))))

;Question 5:
;;; reunion-moniteurs: LISTE[string]/non vide/ *2 ->  COUPLE[string string]
;;; (reunion-moniteurs E1 E2) rend le couple dont les éléments sont les moniteurs de "E1" et "E2"
(define (reunion-moniteurs E1 E2)
  (list (car E1) (car E2)))

;Question 6:
;;; reunion-enfants: LISTE[string]/non vide/ *2 ->  COUPLE[ LISTE[string], LISTE[string] ]
;;; (reunion-enfants E1 E2) rend le couple dont les éléments sont les groupes d'enfants de "E1" et "E2"
(define (reunion-enfants E1 E2)
  (list (cdr E1) (cdr E2) ))

;Question 7 :
;;; echanges-equipes: LISTE[string]/non vide/ *2 ->  COUPLE[ LISTE[string], LISTE[string] ]
;;; (echanges-equipes E1 E2) rend le couple dont les éléments sont les équipes obtenues en échangeant les moniteurs de E1 et E2
(define (echanges-equipes E1 E2)
  (list (cons (car E2) (cdr E1)) (cons (car E1) (cdr E2)) ))