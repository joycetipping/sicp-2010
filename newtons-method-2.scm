; Newton's Method, even better implementation
; This time around, we make all the helper functions
; local instead of global.

(define (sqrt x)
  (define (newton-sqrt guess)
    (if (good-enough? guess)
        guess
        (newton-sqrt (improved guess))))
  (define (good-enough? guess)
    (< (/ (distance guess (improved guess)) guess) 0.001))
  (define (improved guess) (average guess (/ x guess)))
  (newton-sqrt 1.0))



(define (average x y) (/ (+ x y) 2))
(define (distance x y) (abs (- x y)))
(define (square x) (* x x))
