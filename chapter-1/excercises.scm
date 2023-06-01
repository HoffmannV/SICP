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

;Excercise 1.4
;Procedure:
;(define (a-plus-abs-b a b)
;  ((if (> b 0) + -) a b))
;This function uses (if (> b 0) + -) a b) as the compound expression
;if b is greater than 0 the + operator will be used else the - operator will be used.

;Excercise 1.5
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

;test(0 (p))
;Using the applicative order evaluation this test will return a infine loop as all of the arguments would be evaluated
;before the procedure and (p) in this case would call upon itself so the condition (= x 0) could not be checked.
;Normal order evaluation would return 0 as the evaluaton of the arguments is beeing held back util they are explicitly needed

;Exercicse 1.6
;If Alyssa tries to use this new-if procedure to calculate the sqaure root it wil result in a infinite loop.
;The problem lies in the applicative order evaluation of cond (it evaluates bouth conditions before deciding witch one to choose) 
;Because a recursive call is used the procedure would run without beeing able to exit.

;Excercise 1.7
;For very small numbers the precision 0.001 would have to be changed. If the value is lower than 0.001 the procedure will only run
;a few times because the threshold between 0.1 and 0.1 is less than 0.001 so its good-enough.
;With big numbers there will be some small deviations. 
;I will be implementing the changes in the math.scm file

