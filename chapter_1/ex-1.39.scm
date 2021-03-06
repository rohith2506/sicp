(define (d i)
   (if (not (= 0 (remainder (+ i 1) 3)))
       1
       (* 2 (/ (+ i 1) 3))))

(define (cont-frac n d k)
	(define (frac i)
		(if (< i k)
		    (/ (n i) (+ (d i) (frac (+ i 1))))
		    (/ (n i) (d i))))
	(frac 1))

(define (square x) (* x x))

(define (tan-cf x k)
   (define (n k)
       (if (= k 1) x
   	   (- (square x))))
   (define (d k)
       (- (* 2 k) 1))
   (cont-frac n d k))
