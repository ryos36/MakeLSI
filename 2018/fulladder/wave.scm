(use srfi-1)
(use postscheme)
(define (wave-line x y width height ln)
  (letrec ((wave-line0 
             (lambda (x y old-elm ln)
               (if (null? ln) #t
                 (let ((elm (car ln)))
                   (let ((new-x (+ x width))
                         (new-y (+ y (* height (- elm old-elm)))))
                     (lineto new-x y)
                     (stroke)
                     (moveto new-x y)
                     (lineto new-x new-y)
                     (stroke)
                     (moveto new-x new-y)
                     (wave-line0 new-x new-y elm (cdr ln))))))))
    (let* ((elm (car ln))
           (new-y (if (= elm 0) y (+ y height))))
      (wave-line0 x y elm (cdr ln)))))

;----------------------------------------------------------------
(define (wave name-sym ln x y width height name-width)
  (moveto x (+ y (/ height 2)))
  (easy-fontset "MS-Gothic-UniJIS-UTF8-H" 24)
  (show (symbol->string name-sym))
  (let ((new-x (+ x name-width)))
    (moveto new-x y)
    (wave-line new-x y width height ln)))

;----------------------------------------------------------------
(define (waves ln x y width height name-width)
  (letrec ((wave0 (lambda (ln x y)
                    (if (null? ln) #t
                      (let* ((ln0 (car ln))
                             (name-sym (car ln0))
                             (signal-ln (cadr ln0)))
                        (wave name-sym signal-ln x y width height name-width)
                        (wave0 (cdr ln) x (- y height 10)))))))
    (wave0 ln x y)))

;----------------------------------------------------------------
(define s-data '((ci (0 1 0 1 0 1 0 1))
                 (i0 (0 0 0 0 1 1 1 1))
                 (i1 (0 0 1 1 0 0 1 1))
                 (s  (0 1 1 0 1 0 0 1))
                 (co (0 0 0 1 0 1 1 1))))

;(waves s-data 0 100 50 60 70)

(EPS "wave.eps" 300 300
     (translate 10 10)
     (waves s-data 0 300 50 60 70))
#|
(EPS "wave.eps" 300 300
     (translate 10 10)
     (wave 'clk '(0 1 0 1 0 1) 0 100 50 60 70))
|#
