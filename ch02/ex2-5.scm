;; give base and result to compute it's exponent (base^exponent = result)
(define (base-n base n)
  (define (iter num result)
    (if (= (remainder num base) 0)
	(iter (/ num base)
	      (+ 1 result))
	result))
  (iter n 0)) 
	
(define (my-cons a b)
  (* (expt 2 a)
     (expt 3 b)))

(define (my-car n)
  (base-n 2 n))

(define (my-cdr n)
  (base-n 3 n))


