;;; This checks whether this is a prime or not
;;; Author: Rohith

(define (divides? a b)
	(= (remainder b a) 0))

(define (find-divisor n divisor)
		(cond ((> (square divisor) n) n)
		      ((divides? divisor n) divisor)
		      (else (find-divisor n (+ divisor 1)))))

(define (smallest-divisor n)
	(find-divisor n 2))

(define (isprime n)
	(= n (smallest-divisor n)))
