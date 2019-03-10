#lang sicp

; bad
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1)) (fib (- n 2))))))

(fib 0)
(fib 2)
(fib 8)

(define (linear-fib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))

(linear-fib 0)
(linear-fib 2)
(linear-fib 8)