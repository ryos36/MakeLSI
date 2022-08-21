(define calc
  (lambda (x)
    (record-case x
                 [(add) (x y) (+ x y)]
                 [(sub) (x y) (- x y)]
                 [(mul) (x y) (* x y)]
                 [(div) (x y) (/ x y)]
                 [else (assertion-violationf 'calc "invalid expression ~s" x)]))) 
