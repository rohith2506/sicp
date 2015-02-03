;;; Finding the sum of cubes using higher order procedures
;;; Author: Rohith

(define (cube x)
	(* x x x))

(define (sum term a next b)
	(if (> a b) 0
	    (+ (term a) (sum term (next a) next b))))

(define (inc a)
	(+ a 1))

(define (sumcubes a b)
	(sum cube a inc b))
