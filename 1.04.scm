; If b is positive, we return a + b;
;    b is negative, we return a - b.
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
