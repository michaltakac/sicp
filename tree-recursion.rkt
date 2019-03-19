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

(define (count-change amount)
  (cc amount 5))

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount
                     (- kinds-of-coins 1))
                 (cc (- amount
                        (first-denomination
                         kinds-of-coins))
                     kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

(count-change 100)

"> Exercise 1.11:"
(define (fn-rec n)
  (cond ((< n 3) n)
        (else (+ (fn-rec (- n 1))
                 (* 2 (fn-rec (- n 2)))
                 (* 3 (fn-rec (- n 3)))))))

(fn-rec 0)
(fn-rec -3)
(fn-rec 4)
(fn-rec 30)

(define (fn-lin n)
  (fn-iter 3 2 1 n))

(define (fn-iter a b c count)
  (if (< count 3)
      count
      (fn-iter (+ a b c) (* 2 (+ a b)) (* 3 a) (- count 1))))

(fn-lin 0)
(fn-lin -3)
(fn-lin 4)
(fn-lin 30)
        