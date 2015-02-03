;;; Fermat's little theorem to test primality of a number
;;; Author: Rohith

(define (expmod base exp n)
	(cond ((= exp 0) 1)
	      ((even? exp) (remainder (square (expmod base (/ exp 2) n)) n))
	      (else (remainder (* base (expmod base (- exp 1) n)) n))))

(define (fermat-test n)
	(define (try-it a)
		(= (expmod a n n) a))
	(try-it (+ 1 (random (- n 1)))))

(define (fast-prime n times)
	(cond ((= times 0) true)
	      ((fermat-test n) (fast-prime n (- times 1)))
	      (else false)))

(define (report-prime value elapsed-time)
	(display value)
	(newline)
        (display " *** ")
	(newline)
        (display elapsed-time) #t)

(define (start-prime-test n start-time) 
        	(report-prime (fast-prime n 100) (- (runtime) start-time)))

(define (timed-prime-test n)
	(start-prime-test n (runtime)))
