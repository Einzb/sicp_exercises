(define (square n)
  (* n n))

(define (square-sum a b)
  (+ (square a)
     (square b)))

(define (largest-square-sum a b c)
  (cond ((and (> a c) (> b c))
	 (square-sum a b))
	((and (> a b) (> c b))
	 (square-sum a c))
	((and (> b a) (> c a))
	 (square-sum b c))
	(else
	 (square-sum a b))))
