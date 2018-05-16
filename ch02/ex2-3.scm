;; point

(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


;; segment

(define (make-segment p1 p2)
  (cons p1 p2))

(define (start-segment s)
  (car s))

(define (end-segment s)
  (cdr s))


;; make rect by 2 opposite points

(define (make-rect point opposite-point)
  (cons point opposite-point))

(define (min-x rect)
  (min (x-point (car rect))
       (x-point (cdr rect))))

(define (min-y rect)
  (min (y-point (car rect))
       (y-point (cdr rect))))

(define (max-x rect)
  (max (x-point (car rect))
       (x-point (cdr rect))))

(define (max-y rect)
  (max (y-point (car rect))
       (y-point (cdr rect))))

(define (rect-horlen rect)
  (- (max-x rect)
     (min-x rect)))

(define (rect-verlen rect)
  (- (max-y rect)
     (min-y rect)))

(define (area rect)
  (* (rect-horlen rect)
     (rect-verlen rect)))

(define (perimeter rect)
  (* (+ (rect-horlen rect)
	(rect-verlen rect))
     2))
