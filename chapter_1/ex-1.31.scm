(define (square n)
	(* n n))

(define (sum term a next b)
	(if (> a b) 1
	    (* (term a) (sum term (next a) next b))))

(define (pi-value n)
	(define (pi-term k)
		(/ (square k) (* (- k 1) (+ k 1))))
	(define (pi-inc k)
		(+ k 2))
	(* (/ 2.0 3) (sum pi-term 4 pi-inc n)))
