;;; Reverse the list
;;; Author: Rohith

(define (reverse-list items)
	(if (= (length items) 1) (car items)
	    (append (reverse (cdr items)) (list (car items)))
	)
)
