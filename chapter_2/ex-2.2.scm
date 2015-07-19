;;; Line-segment problem
;;; Author: Rohith

;;; segment constructor
(define (make-segment n d) (cons n d))

(define (start-segment n) (car n))

(define (end-segment n) (cdr n))

;;; Point constructor
(define (make-point x y) (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))


;;; mid-point of a segment
(define (mid-point s)
	(make-point (/ (+ (x-point (start-segment s)) (x-point (end-segment s))) 2)
		    (/ (+ (y-point (start-segment s)) (y-point (end-segment s))) 2)
	)) 

(define (print-point p)
	(newline)
	(display "(")
	(display (x-point p))
	(display ",")
	(display (y-point p))
	(display ")"))
