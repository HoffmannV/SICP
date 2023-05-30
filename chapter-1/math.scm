;Returns the absolute value for the passed value
(define (abs x) (if (< x 0) 
                  (- x)
                  x))

;Calculates the average of two passed values
(define (average x y) (/ (+ x y) 2))

;Calcualtes the square
(define (square a) (* a a))

;Calculates the square root
(define (sqrt a) 
    ;Check if the value is good enough for higher precision the value 0.001 can be adjusted
    (define (good-enough? guess a)
        (< (abs (- (square guess) a)) 0.001))
    ;Improves the guess by averaging the guess and the quotient of the guess and the passed value
    (define (improve guess a) (average guess (/ a guess)))
    ;Combines all of the functions above. Used to calculate the square root by approximation
    (define (sqrt-iter guess a)
        (if (good-enough? guess a)
            guess
            (sqrt-iter (improve guess a) a)))
    ;The first guess is 1.0. Improvable?
    (sqrt-iter 1.0 a))

