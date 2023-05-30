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

