(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y))
              '()
              sequence))

(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

(define (length sequence)
  (accumulate (lambda (x y) (+ 1 y))
              0
              sequence))
(length (list 1 2 3 5 6 7 8))

(append (list 1 2 3) (list 4 5))

(map (lambda (x) (* x x))
     (list 1 2 3 4 5))
