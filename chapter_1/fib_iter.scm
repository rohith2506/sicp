;;; This is Fibonacci sequence using iterative recursion
;;; @Author: Rohith

(define (fibo n)
	(define (fib_iter a b count)
		(if (= count 0) b
		    (fib_iter (+ a b) a (- count 1))))
	(fib_iter 1 0 n))
