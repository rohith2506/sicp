;;; Exercise 1.11
;;; Author: Rohith

(define (func_iter a b c cnt)
	(if (= cnt 0) c
		(func_iter b c (+ c (* b 2) (* 3 a)) (- cnt 1))))

(define (func n)
	(if (< n 3) n
	(func_iter 1 2 3 (- n 3))))
