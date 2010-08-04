; Write a recursive process to compute elements of Pascal's triangle.
(define (pascal row index)
  (if (or (= row 1) (= index 1) (= index row))
      1
      (+ (pascal (- row 1) index)
         (pascal (- row 1) (- index 1)))))

; Note: This doesn't have error checking for index > row (which doesn't
;       make sense).
