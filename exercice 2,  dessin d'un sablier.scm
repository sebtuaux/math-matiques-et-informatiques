; nous avons besoin de quatre paramètres pour tracer le sablier : x1, y1, x2, y2
; Les abscisses x1, x2 délimitent le sablier sur sa largeur, respectivement de gauche à droite.
; Les ordonnées y1, y2 délimitent le sablier sur sa hauteur, respectivement de haut en bas.

;; Voici un jeu de test pour la fonction sablier :
; (sablier 0 1 1 0)
; (sablier -1 1 1 -1)
; (sablier 0.5 1 1 0.5)

;;; sablier: Nombre * Nombre * Nombre * Nombre -> Image
;;; sablier(x1 x2 y1 y2) rend une image représentant un sablier avec la largeur comprise entre x1 et x2, la hauteur comprise entre y1 et y2
(define (sablier x1 x2 y1 y2)
  (let* (  (i (/ (+ x1 x2) 2))
           (j (/ (+ y1 y2) 2)) )
    (overlay 
     (line x1 y1 x2 y1)
     (line x1 y2 x2 y2)
     (line x1 y1 i j)
     (line x2 y1 i j)
     (line x1 y2 i j)
     (line x2 y2 i j)   )))
     
    
    
           
    