(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1)) (f (- n 2)) (f (- n 3))))))
(define (fi n)
  (define (f-iter a b c i)
    (if (= i n)
        a
        (f-iter b c (+ a b c) (+ 1 i))))
  (f-iter 0 1 2 0))
