#lang racket
; Brandon Toups
; bmt0015@auburn.edu
; 10 December 2017

; A Scheme function named "between" such that 
; (between I J K) returns true iff K is an 
; integer inclusively between I and J. 
; I <= K <= J

; Sample input: 
; (between 5 10 7)    => #t
; (between 5 10 11)   => #f

(define (between I J K)
  (if (and (<= I K) (<= K J)) 
    #t
    #f))
