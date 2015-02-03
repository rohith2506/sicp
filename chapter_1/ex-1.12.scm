;;; This calculates pascal traingle
;;; Author: Rohith

(define (pascal row col)
	(cond  ((< row col) #f)
	       ((or (= col 0) (= row col)) 1)
	       (else (+ (pascal (- row 1) col)
			(pascal (- row 1) (- col 1))))))
