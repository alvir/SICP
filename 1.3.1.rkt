#lang racket
(define (sum-of-square-of-biggest a b c)
  (if (or (< a c) (< b c))
      (+ (if (> a b) (* a a) (* b b)) 
         (* c c))
      (+ (* a a) (* b b))))
(= (sum-of-square-of-biggest 3 2 3) 18)
(= (sum-of-square-of-biggest 1 2 3) 13)
(= (sum-of-square-of-biggest 3 2 1) 13)
(= (sum-of-square-of-biggest 1 3 2) 13)
(= (sum-of-square-of-biggest 3 1 1) 10)
(= (sum-of-square-of-biggest 2 2 2) 8)
(= (sum-of-square-of-biggest 0 0 2) 4)
(= (sum-of-square-of-biggest 1 -2 -2) 5)