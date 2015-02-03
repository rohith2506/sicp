;;; Finding the sum of cubes using higher order procedures
;;; Author: Rohith

(define (cube x)
	(* x x x))

(define (sum term a next b)
	(define (iter a result)
		(if (> a b) result
			(iter (next a) (+ (term a) result))))
	(iter a 0))
		
(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (inc x) (+ x 1))
  (define (y k)
    (f (+ a (* k h))))
  (define (term k)
    (* (cond ((odd? k) 4)
             ((or (= k 0) (= k n)) 1)
             ((even? k) 2))
       (y k)))
  (/ (* h (sum term 0 inc n)) 3))
