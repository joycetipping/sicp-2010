; Consider a function f(n) = n                          if n <  3
;                          = f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3.

; Write a procedure that computes f by means of a recursive process.
(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1))
         (* 2 (f-recursive (- n 2)))
         (* 3 (f-recursive (- n 3))))))


; Write a procedure that computes f by means of an iterative process.
(define (f-iterative n)
  (if (< n 3)
      n
      (f-iter n 0 1 2 3)))

(define (f-iter n a b c i)
  (if (= n i)
      (next a b c)
      (f-iter n b c (next a b c) (+ i 1))))

(define (next old middle new)
  (+ new (* 2 middle) (* 3 old)))
