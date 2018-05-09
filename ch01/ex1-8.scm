(define (improve guess x)
  (/ (+ (/ x
	   (* guess guess))
	(* 2 guess))
     3))

(define (good-enough? guess next-guess)
  (< (abs (- guess next-guess))
     0.001))

(define (cube-root-iter guess x)
  (if (good-enough? guess
		    (improve guess x))
      guess
      (cube-root-iter (improve guess x)
		      x)))

(define (my-cube-root n)
  (cube-root-iter 1.0 n))
		    
