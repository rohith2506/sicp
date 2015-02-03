;;; Newton's method of finding square root of a number using scheme
;;; using lexical scoping
;;; @Author: Rohith 
(define (average x y)
	(/ (+ x y) 2))

(define (square x)
	(* x x))

(define (sqrt2 x)
	(define (improve guess)
		(average guess (/ x guess)))
	(define (guess_good? guess x)
		( < (abs (- (square guess) x)) 0.001))
	(define (sqrt_iter guess)
		(if (guess_good? guess x)
	    	guess
	    	(sqrt_iter (improve guess))))
(sqrt_iter 1.0))
