;;; Fast Square exponentiation
;;; Author: Rohith 

(define (iseven n)
	(= (remainder n 2) 0))

(define (fast-exp b n)
	(cond ((= n 0) 1)
	      ((iseven n) (square (fast-exp b (/ n 2))))
	      (else (* b (fast-exp b (- n 1))))))

