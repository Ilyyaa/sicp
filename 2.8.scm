(define make-interval cons)
(define upper-bound cdr)
(define lower-bound car)

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (lower-bound y))
                 (- (upper-bound x) (upper-bound y))))
