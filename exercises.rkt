#lang sicp

; Exercise 1.1

10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))

(define a 3)
(define b (+ a 1))

(+ a b (* a b ))
(= a b)
(if (and (> b a) (< b (* a b)))
    b
    a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))

; Exercise 1.2

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

; Exercise 1.3

(define (sum-of-squares a b) (+ (* a a) (* b b)))

(define (sum-of-squares-of-largest a b c)
  (cond ((and (> a b) (> a c)) (sum-of-squares a b))
        ((and (> a b) (> c b)) (sum-of-squares a c))
        ((and (> c a) (> b a)) (sum-of-squares b c))))

(sum-of-squares-of-largest 1 2 3)
(sum-of-squares-of-largest 3 2 1)
(sum-of-squares-of-largest 1 3 2)

; Exercise 1.4

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 2 -4)

; Exercise 1.5

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

;(test 0 (p))

