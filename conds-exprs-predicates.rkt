#lang sicp

(define (abs x)
  (cond ((> x 0) x)
         ((= x 0) 0)
         ((< x 0) (- x))
         ))

(define (conscise-abs x)
  (cond ((< x 0) (- x))
        (else x)))

(define (abs-with-if x)
  (if (< x 0)
      (- x)
      x))

(abs -5)
(conscise-abs -10)
(abs-with-if -16)
(abs-with-if 0)