; Newton's Method, better implementation

(define (sqrt x) (newton-sqrt 1.0 x))

(define (newton-sqrt guess x)
  (if (good-enough? guess x)
      guess
      (newton-sqrt (improved guess x) x)))

; As explained in 1.07.scm, the original "good-enough?" dealt
; poorly with very large and very small numbers. This is better.
(define (good-enough? guess x)
  (< (/ (distance guess (improved guess x)) guess) 0.001))

(define (improved guess x) (average guess (/ x guess)))

(define (average x y) (/ (+ x y) 2))

(define (distance x y) (abs (- x y)))

(define (square x) (* x x))
