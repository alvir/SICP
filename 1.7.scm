#lang scheme
(define (square x) (* x x))
(define (improve guess x) 
  (average guess 
           (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (good-enough? guess1 guess2)
  (< (abs (- guess1 guess2)) 0.0001))
(define (sqrt-iter guess x)
  (define (iter)
    (improve guess x))
  (if (good-enough? guess (iter))
      (iter)
      (sqrt-iter (iter) x)))
(define (sqrt x)
  (sqrt-iter 1.0 x))
(square (sqrt 30000000000))
(square (sqrt 1))
(square (sqrt 4))
(square (sqrt 0.000004))
(square (sqrt 0.0))
(square (sqrt -0.0))
