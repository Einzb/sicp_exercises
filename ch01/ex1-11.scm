;; recursive way
(define (f-recur n)
  (if (< n 3)
      n
      (+ (f-recur (- n 1))
	 (* 2
	    (f-recur (- n 2)))
	 (* 3
	    (f-recur (- n 3))))))

;; iterative way
(define (f-iter n)
  (define (iter fn-1 fn-2 fn-3 counter)
    (if (= counter n)
	fn-1
	(iter (+ fn-1
		 (* 2 fn-2)
		 (* 3 fn-3))
	      fn-1
	      fn-2
	      (+ 1 counter))))
    (if (< n 3)
	n
	(iter 2 1 0 2)))
