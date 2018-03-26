#lang racket
; Brandon Toups
; bmt0015@auburn.edu
; COMP-3220-001
; 12-10-2017

; Problem Description: Define a Scheme function named
; between so that (between I J K) returns true iff
; K is an integer inclusively between I and J. 
(define (between I J K)
  (if (and (<= I K) (<= K J)) 
    #t
    #f))
