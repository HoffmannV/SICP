; Exercise 1.1
; 10 will be printed to the console
10

; 12 will be printed to the console
(+ 5 3 4)

; 8 will be printed to the console
(- 9 1)

; 3 will be printed to the console
(/ 6 2)

; 6 will be printed to the console
(+ (* 2 4) (- 4 6))

; a will be printed to the console
(define a 3)

; b will be printed to the console
(define b (+ a 1))

; 19 will be printed to the console:
(+ a b (* a b))

; 4 will be printed to the console
(if(and (> b a) (< b (* a b)))
  b
  a)

; 16 will be printed to the console
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

; 6 will be printed to the console
(+ 2 (if (> b a) b a))

; 16 will be printed to the console
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))

;Excercise 1.2
; Should return -0.246666 or -37/150
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;Excercise 1.3
;For this excercise I assume there is at this point no function that calculates the square of a number
;also I will use the verbose way to create procedures with no syntactic sugar
(define sqr (lambda (x) (* x x)))
(define sumoflargest2 (lambda (a b c) 
			(cond ((and (> a b) (> a c)) 
			       (if (> b c) 
				 (+ (sqr a) (sqr b))
				 (+ (sqr a) (sqr c))))
			      ((and (> b a) (> b c)) 
			       (if (> a c)
				 (+ (sqr b) (sqr a))
				 (+ (sqr b) (sqr c))))
			      ((and (> c a) (> c b))
			       (if (> a b)
				 (+ (sqr c) (sqr a))
				 (+ (sqr c) (sqr b))))
			      ((= a b)
			       (if  (> a c)
				 (+ (sqr b) (sqr a))
				 (+ (sqr c) (sqr a))))
			      ((= a c)
			       (if (> c b)
				 (+ (sqr c) (sqr a))
				 (+ (sqr c) (sqr b))))
			      ((= b c)
			       (if (> b a)
				 (+ (sqr b) (sqr c))
				 (+ (sqr b) (sqr a)))))))
