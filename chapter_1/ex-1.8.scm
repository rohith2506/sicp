;;; This contains general method for newton - raphson to find nth roots of any number
(define (good_guess? guess x)
	(< (abs (- guess x)) 0.0001))

(define (square_n a b)
	(if (= b 0) 1 
	    (square_n a b-1)))

(define (numer guess n x)
	(- (square_n guess n) x)) 

(define (denom guess n)
	(* (square_n guess (- n 1)) n)) 

(define (calc guess x n)
	(/ (numer guess n x) (denom guess n)))

(define (sqrt_iter guess x n)
	(if good_guess? guess x)
	guess
	(sqrt_iter (calc guess x n) x n))

(define (sqrtn x n)
	(sqrt_iter 1.0 x n))
