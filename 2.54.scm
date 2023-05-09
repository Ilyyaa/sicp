#lang racket
(define (equal? a b)
  (cond ((and (not (pair? a)) (not (pair? b)))
         (eq? a b))
        ((and (pair? a) (pair? b)
              (equal? (car a)
                      (car b))
              (equal? (cdr a)
                      (cdr b)))
         true)
        (else false)))
         
(equal? '(1 2 3 (4 5) 6) '(1 2 3 (4 5) 6))
;true
(equal? '(1 2 3 (4 5) 6) '(1 2 3 (4 5) 6))
;false
