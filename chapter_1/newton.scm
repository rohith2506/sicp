;;; Procedures which procedures as return values
;;; Author: Rohith

(define tolerance 0.0001)

(define (fixed-point f first-guess)
        (define (close-enough? v1 v2)
                (< (abs (- v1 v2)) tolerance))
        (define (try guess)
                (let ((next (f guess)))
                     (if (close-enough? guess next) next
                         (try next))))
        (try first-guess))

(define dx 0.00001)

(define (deriv g)
	(lambda (x) (/ (- (g (+ x dx)) (g x)) dx)))

(define (newton-transform g)
	(lambda (x) (- x (/ (g x) ((deriv g) x)))))

(define (newton-method g guess)
	(fixed-point (newton-transform g) guess))

(define (fixed-point-of-transform g transform guess)
	(fixed-point (transform g) guess))

(define (sqrt x)
	(fixed-point-of-transform (lambda(y) (- (square y) x)) newton-transform 1.0))
