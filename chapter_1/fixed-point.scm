;;; Finding squre root of a number using fixed-point method
;;; Author: Rohith

(define tolerance 0.0001)

(define (fixed-point f first-guess)
	(define (close-enough? v1 v2)
		(< (abs (- v1 v2)) tolerance))
	(define (try guess)
		(let ((next (f guess)))
		     (if (close-enough? guess next) next
			 (try next))))
	(try first-guess))

(define (sqrt x)
	(fixed-point (lambda (y) (average y (/ x y))) 1.0))
