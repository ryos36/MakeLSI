
; ryos
(defparameter *parser-stream* t)

(defun xy (op-args)
  (format *parser-stream* "XY ")
  (let ((args (cdr op-args)))
    (dolist (arg args)
      (let ((x (car arg))
            (y (cadr arg)))
        (format *parser-stream* "~a: ~a~%" x y)))))
            
#|
(defun parse-gds-two (lst &optional rv)
	(if (null lst)
	   (reduce #'(lambda (a b) (concatenate 'string a b)) (nreverse rv) :initial-value "")

	   (let ((op (car lst))
			 (arg (cadr lst))
			 (remain (cddr lst)))

		 (push (parse-gds-one op arg) rv)
		 (parse-gds-two remain rv))))
|#

(defun bgnstr (op-args)
  (let* ((args (cdr op-args))
         (modification-date (car args))
         (modification-time (cadr args))
         (access-date (caddr args))
         (access-time (cadddr args))
         (op-lst (cddddr args)))

      (format *parser-stream* "BGNSTR ~a ~a ~a ~a~%"
              modification-date modification-time
              access-date access-time)
      (dolist (new-op-args op-lst)
        (parse-gds new-op-args))
      (format *parser-stream* "ENDSTR~%")))

(defun mos (op-args)
  (let* ((op (car op-args))
         (args (cdr op-args))
         (name (caddr args))
         (op-lst (cdddr args)))
    (dolist (new-op-args op-lst)
      (parse-gds new-op-args))))

(defun one-part (op-args)
  (let* ((op (car op-args))
         (op-lst (cdr op-args)))

      (format *parser-stream* "~a~%" op)
      (dolist (new-op-args op-lst)
        (parse-gds new-op-args))
      (format *parser-stream* "ENDEL~%")))

(defun simple-one (op-args)
  (let* ((op (car op-args))
         (arg0 (cadr op-args)))
    (format *parser-stream* "~a ~a~%" op arg0)))

(defun op-to-func (op)
    (case op
      (:bgnstr #'bgnstr)
      (:nmos #'mos)
      (:pmos #'mos)
      (:baundary #'one-part)
      (:path #'one-part)
      (:sref #'one-part)
      (:xy #'xy)
      (otherwise #'simple-one)))
       
;----------------------------------------------------------------
(defun parse-gds (gds-list)
    (let* ((op-func-sym (car gds-list))
           (remain (cdr gds-list))
           (op-func (op-to-func op-func-sym)))
      (funcall op-func gds-list)))

#|
(print
  (multiple-value-bind
    (second minute hour day month year day-of-week dst-p tz)
    (get-decoded-time)
    (bgnstr (list
              (format nil "~a/~a/~a" month day year)
              (format nil "~a:~a:~a" hour minute second)
              (format nil "~a/~a/~a" month day year)
              (format nil "~a:~a:~a" hour minute second)
			  :xy `((10 20) (-10 200))))))
|#
(parse-gds '(:xy (10 20) (-10 200)))

(parse-gds '(:BAUNDARY (:LAYER 18) (:DATATYPE 0)
   (:XY (-500 -496.5) (-500 6503.5) (2500 6503.5) (2500 -496.5) (-500 -496.5))))
