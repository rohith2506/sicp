; Find nth item in a list

(define (nth-item items n)
	(if (= n 0) (car items)
	 (nth-item (cdr items) (- n 1))))


(define (length items)
	(define (length-iter a count)
		(if (null? a) count
		    (length-iter (cdr a) (+ count 1))))
	(length-iter items 0))
