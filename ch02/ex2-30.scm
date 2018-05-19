(define nil '())

(define (square n)
  (* n n))

;; define square-tree directly(i.e., without using any higher-order procedures)
(define (square-tree-directly tree)
  (cond ((null? tree) nil)
	((not (pair? tree))
	 (square tree))
	(else
	 (cons (square-tree (car tree))
	       (square-tree (cdr tree))))))

;; define square-tree by using map and recursion
(define (square-tree-map tree)
  (map (lambda (sub-tree)
	 (if (pair? sub-tree)
	     (square-tree sub-tree)
	     (square sub-tree)))
       tree))
	 
	      
