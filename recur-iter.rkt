#lang sicp

;(define (factorial n)
;  (if (= n 1)
;      1
;      (* n (factorial (- n 1)))))

;(factorial 6)

(define (factorial n)
  (define (fact-iter product counter max-count)
    (if (> counter max-count)
        product
        (fact-iter (* counter product)
                   (+ counter 1)
                   max-count)))
  (fact-iter 1 1 n))

(factorial 6)

; Ackermann's function
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))

(A 1 10)
(A 2 4)
(A 3 3)

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))

(f 2)
(f 9)
(g 2)
(g 9)
;(h 2)
;(h 9)
;(k 2)
;(k 9)