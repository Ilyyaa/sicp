(define (pair a b)
  (* (expt 2 a) (expt 3 b)))

(define (twos x)
  (if (= (/ x 3) (round (/ x 3)))
      (twos (/ x 3))
      x))

(define (threes x)
  (if (= (/ x 2) (round (/ x 2)))
      (threes (/ x 2))
      x))

(define logB
  (lambda (x B)
    (/ (log x) (log B))))

(define (car x)
  (logB (twos x) 2))

(define (cdr x)
  (logB (threes x) 3))
