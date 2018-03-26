#lang racket
; Brandon Toups
; bmt0015@auburn.edu
; 10 December 2017

; A Scheme function "p" such that (p X) is true if X is
; a list consisting of n 1's followed by n 0's for some integer n.

; Sample input:
; (p ‘(1 1 0 0))    => #t
; (p ‘( 0 1 ))      => #f
; (p ‘(1 1 1 0))    => #f

; Function Definition
(define (p X)
  ; if the length of list = 0, return #f
  (if (= (length X) 0) #f
      ; if first element in list = 0, return #f
      (if (= (list-ref X 0) 0) #f
          ; if first element in the list does != 1, return #f
          (if (not (eq? (list-ref X 0) 1)) #f
              ; if the last element = 1, return #f
              (if (= (list-ref X (- (length X) 1)) 1) #f
                  ; if the element at length/2+1 = 1, return #f
                  (if (= (list-ref X (/(length X) 2)) 1) #f
                      ; enough error checking on first, last, middle elements above
                      ; renders this usable. If the number of 1's = number of 0's,
                      ; return #t. Else, return false
                      (eqv? (length (filter even? X) ) (length (filter odd? X)))))))))