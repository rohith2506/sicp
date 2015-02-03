;;; Calculating fibonacci in o(log n) time (p' = p2 + q2 and q' = q2 + 2pq)
;;; Author: Rohith
;;; This is one of the good problem i found here.

(define (fibo n)
	(fib_iter 1 0 0 1 n))

(define (fib_iter a b p q n)
	(cond ((= n 0) b)
	      ((even? n) (fib_iter a b (+ (* p p) (* q q)) (+ (* q q) (* 2 p q)) (/ n 2)))
	      (else (fib_iter (+ (* b p) (* a q) (* a p)) (+ (* b p) (* a q)) p q (- n 1)))))
