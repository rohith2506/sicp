;;; Fast Square exponentiation using iterative process
;;; Author: Rohith 

(define (even? n)
	(= (remainder n 2) 0))

(define (fast-exp_iter a b n)
	(cond ((= n 0) a)
	      ((even? n) (fast-exp_iter  a  (* b 2) (/ n 2)))
	      (else (fast-exp_iter (+ a b) b (- n 1)))))

(define (fast-exp a n)
	(fast-exp_iter 0 a n)) 
