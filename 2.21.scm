(define (square-list items)
  (if (null? items)
      '()
      (cons (* (car items) (car items))
            (square-list (cdr items)))))

(define (msquare-list items)
  (map (lambda (x) (* x x)) items))
