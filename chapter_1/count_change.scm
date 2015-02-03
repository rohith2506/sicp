;;; This is a recursive solution to find number of ways to make up change
;;; Author: Rohith

(define (count-change amount)
	(cc amount 5))
(define (cc amount kind-of-coins)
		(cond ((= amount 0) 1)
		      ((or (< amount 0) (= kind-of-coins 0)) 0)
		      (else (+ (cc amount (- kind-of-coins 1)) (cc (- amount (denom kind-of-coins)) kind-of-coins)))))
(define (denom n)
		(cond ((= n 1) 1)
		      ((= n 2) 5)
		      ((= n 3) 10)
		      ((= n 4) 25)
		      ((= n 5) 50)))
