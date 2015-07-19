;;; Representation of rectangles using abstraction barriers
;;; Author: Rohith

(define (distance x1 y1 x2 y2)
	(sqrt (+ (* (abs (- x1 x2)) (abs (- x1 x2))) (* (abs (- y1 y2)) (abs (- y1 y2))))))

(define (area l b)
	(* (distance (x-point (start-segment l))  (x-point (end-segment l)) (y-point (start-segment l)) (y-point (end-segment l)))
	   (distance (x-point (start-segment b))  (x-point (end-segment b)) (y-point (start-segment b)) (y-point (end-segment b))))) 

(define (make-segment a b) (cons a b))
(define (start-segment a) (car a))
(define (end-segment a) (cdr a))

(define (make-point a b) (cons a b))
(define (x-point a) (car a))
(define (y-point a) (cdr a))
