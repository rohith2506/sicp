;;; Write all functions which is generalized for all types of rational numbers
;;; Author: Rohith

(define (add-rat  x y)
	(make-rat (+ (* (numer x) (denom y)) (* (denom x) (numer y))) (* (denom x) (denom y))))

(define (make-rat x y) (cons x y))
(define (numer x) (car x))
(define (denom x) (cdr x))

(define x1 (make-rat 1 -2))
(define x2 (make-rat -2 -3))

(define (print-rat x)
	(newline)
	(display (numer x))
	(display "/")
	(display (denom x)))

(define (print-rat1 x) 
	(cond ((and (< (numer x) 0) (< (denom x) 0))
		(newline)
		(display (abs (numer x)))
		(display "/")
		(display (abs (denom x)))
              )
	      ((and (> (numer x) 0) (> (denom x) 0))
		(newline)
		(display (numer x))
		(display "/")
		(display (denom x))
	      )
	      (else 
		(newline)
		(display (numer x))
		(display "/")
		(display (denom x))
	      )
	)
)
