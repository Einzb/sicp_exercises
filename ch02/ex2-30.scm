(define nil '())

(define (square n)
  (* n n))

(define (square-tree tree)
  (cond ((null? tree) nil)
	((not (pair? tree))
	 (square tree))
	(else
	 (cons (square-tree (car tree))
	       (square-tree (cdr tree))))))
	 
	      
