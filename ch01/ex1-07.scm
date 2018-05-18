(define (average a b)
  (/ (+ a b)
     2))

(define (improve guess x)
  (average guess
	   (/ x guess)))

(define (good-enough? guess next-guess)
  (< (abs (- guess next-guess))
     0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess
		    (improve guess x))
      guess
      (sqrt-iter (improve guess x)
		 x)))

(define (my-sqrt n)
  (sqrt-iter 1.0 n))
		    
