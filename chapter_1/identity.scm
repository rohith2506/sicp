;;; Finding the sum of cubes using higher order procedures
;;; Author: Rohith

(define (sum term a next b)
	(if (> a b) 0
	    (+ (term a) (sum term (next a) next b))))

(define (identity n) n)

(define (inc n)
	(+ n 1))

(define (sum-integers a b)
	(sum identity a inc b))
