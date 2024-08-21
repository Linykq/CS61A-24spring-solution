(define (ascending? s) 
    (cond ((or (null? s) (null? (cdr s))) #t)
        ((>= (car (cdr s)) (car s)) (ascending? (cdr s)))
        (else #f)))

(define (my-filter pred s) 
    (if (null? s) '()
        (if (pred (car s)) 
            (cons (car s) (my-filter pred (cdr s)))
            (my-filter pred (cdr s)))))

(define (interleave lst1 lst2)
    (cond
        ((null? lst1) lst2)
        ((null? lst2) lst1)
        (else (cons (car lst1)(cons (car lst2) (interleave (cdr lst1) (cdr lst2)))))))

(define (no-repeats s)
    (if (null? s) '()
        (let ((t (no-repeats (cdr s))))
        (if (null? t) 
            (list (car s))
            (let ((filter-t (filter (lambda(a) (not (= a (car s)))) t)))                
            (cons (car s) filter-t))))))
