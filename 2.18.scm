(define (reverse items)
  (define rev (list))
  (define (rev-iter rev items)
    (if (= (length items) (length rev))
       rev
        (rev-iter (cons (list-ref items (length rev))
                        rev)
                  items)))
  (rev-iter rev items))
(reverse (list 1 2 3 4 5 6 7 8 9 10 -45))
(define (first-pair items)
  (cons (list-ref items 0) (list) ))

(define (rec-reverse items)
  (if (null? items)
      items
      (append (rec-reverse (cdr items)) (first-pair items))))
(rec-reverse (list 1 2 3 0 0 0 0 0 2 2 3213 3243))
