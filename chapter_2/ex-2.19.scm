;;; General function for lists
;;; Author: Rohith

(define (map proc items)
	(if (null? items) ()
	    (cons (proc (car items)) (map proc (cdr items)))
	)
)

(define (scale-list items factor)
	(map (lambda (x) (* x factor)) items))

(define (square-list items)
	(map (lambda (x) (* x x)) items))
