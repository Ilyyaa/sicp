;rats

(define (make-rat n d)
  (cons n d))

(define (numer x)
  (let ((g (gcd (car x) (cdr x))))
    (/ (car x) g)))

(define (denom x)
  (let ((g (gcd (car x) (cdr x))))
    (/ (cdr x) g)))

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))


(define (mul-rat x y)
    (define ans (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))
  (if (< (denom ans) 0)
      (make-rat (* -1 (numer ans))
                (* -1 (denom ans)))
      ans) 
  )

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

;segments

(define make-segment cons)
(define start-segment car)
(define end-segment cdr)

(define make-point cons)
(define x-point car)
(define y-point cdr)

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (midpoint-segment segment)
  (make-point (/ (+ (x-point (start-segment segment))
                    (x-point (end-segment segment)))
                 2)
              (/ (+ (y-point (start-segment segment))
                    (y-point (end-segment segment)))
                 2)))

;rectangles

(define make-rectangle cons)
(define bottom-left car)
(define top-right cdr)

(define (perimeter rect)
  (* (+ (- (x-point (top-right rect)) (x-point (bottom-left rect)))
     (- (y-point (top-right rect)) (y-point (bottom-left rect))))
     2))

(define (area rect)
  (* (- (x-point (top-right rect)) (x-point (bottom-left rect)))
     (- (y-point (top-right rect)) (y-point (bottom-left rect)))))
