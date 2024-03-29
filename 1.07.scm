; In our implementation of Newton's Method, we say that a guess
; is good enough when its square is within 0.001 of x.

(sqrt 0.0001)
; Real answer: 0.01
; Our newton's method answer: 0.0323

; Our "good-enough?" predicate isn't very good for very small x's
; where 0.001 becomes a large error percentage-wise.
 
; For example, the real square root of 0.0001 is 0.01, but our
; program outputs 0.0323, because its square, 0.00104, is indeed
; within our error margin.


(sqrt (square 999999999999999))
; Hangs for a very long time

; Because computers lose precision on floats, our predicate also 
; not very good for large numbers. This is because a small loss
; of precision in a big number, when squared, becomes a big loss.

; This is actually because of the quadratic formula:

; Suppose g is our guess and d (for delta) is our very small loss
; of precision. To put things into perspective, g is a number
; like 999999999999999, and d is maybe 0.0001.

; With no loss of precision, we have simply g². But with the
; loss of precision, we end up with (g + d)² = g² + 2gd + d².
; The two differ by 2gd + d². Now, the d² isn't much, but with
; a number as big as g, 2gd can amount to quite a lot; in our
; case, 2e11. (!!!)

; Naturally, that means that the square of our guess is unlikely
; to ever be within 0.001 of x.

(define (good-enough? guess x)
  (< (/ (distance guess (improved guess x)) guess) 0.001))
