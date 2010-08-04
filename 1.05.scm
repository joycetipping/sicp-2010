(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; In an interpreter that uses applicative-order evaluations, this would hang forever
; because (p) is an infinite loop: (p)evaluates to (p), which evaluates to (p) ...



; In an interpreter that uses normal-order evaluation,
;
;    (test 0 (p))
;
; would be expanded to
;
;    (if (= 0 0) 0 (p))
;
; which would evaluate to 0. Since (p) never gets evaluated, there is no infinite loop.
