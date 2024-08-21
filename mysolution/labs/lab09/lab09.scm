(define (over-or-under num1 num2 )
  (if (> num1 num2)
      (print '1)
      (if (< num1 num2)
          (print '-1)
          (print '0))))

(define (make-adder num) 
  (lambda (inc) (+ num inc)))
  
(define (composed f g) 
  (lambda(x)(f (g x))))

(define (repeat f n)
  (if (> n 0) (composed f (repeat f (- n 1)))
  (lambda(x) x)))

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
  (if (zero? (modulo (max a b) (min a b)))
    b
    (gcd (min a b) (modulo (max a b) (min a b)))))
