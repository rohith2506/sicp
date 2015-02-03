;;; This calculates factorial of a given number using iterative
;;; This is tail recursion (Iterative process with recursive procedure)
;;; @Author: Rohith

(define (factorial n)
	(define (fact_iter counter prod)
		(if (> counter n)
		    prod
		    (fact_iter (+ counter 1) (* counter prod))))
	(fact_iter 1 1))
