; Newton's Method for cube roots

(define (cbrt x) (newton-cbrt 1.0 x))

(define (newton-cbrt guess x)
  (if (good-enough? guess x)
      guess
      (newton-cbrt (improved guess x) x)))

(define (good-enough? guess x)
  (< (/ (distance guess (improved guess x)) guess) 0.001))

(define (improved guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (distance x y) (abs (- x y)))

(define (square x) (* x x))
