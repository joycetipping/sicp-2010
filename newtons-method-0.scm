; This is the original Newton's Method implementation

(define (sqrt x) (newton-sqrt 1.0 x))

(define (newton-sqrt guess x)
  (if (good-enough? guess x)
      guess
      (newton-sqrt (improved guess x) x)))

(define (good-enough? guess x)
  (< (distance (square guess) x) 0.001))

(define (improved guess x) (average guess (/ x guess)))

(define (average x y) (/ (+ x y) 2))

(define (distance x y) (abs (- x y)))

(define (square x) (* x x))
