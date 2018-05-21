(define nil '())

(define (my-reverse items)
  (if (null? items)
      nil
      (append (my-reverse (cbdr items))
	      (cons (car items) nil))))
