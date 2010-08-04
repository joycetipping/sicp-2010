(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

; This won't do the same thing as newton's method, because our
; "new-if" function evals its parameters before passing them
; into the function body. That means that "sqrt-iter" is going
; be an infinite loop because whether the guess is good enough
; or not, it will always evaluate the else clause, a call to
; itself.

; My guess: The built-in "if" is a macro.
