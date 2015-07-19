;;; Find last pair in list
;;; Author: Rohith


(define (last-pair items)
	(if (=  (length items) 1) (car items)
	    (last-pair (cdr items))))
