; ryos
(defparameter *parser-output* t)

(defun xy (op-args)
  (format *parser-output* "XY ")
  (let ((args (cdr op-args)))
    (dolist (arg args)
      (let ((x (car arg))
            (y (cadr arg)))
        (format *parser-output* "~a: ~a~%" x y)))))
            
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

(defun bgn-op (op-args)
  (multiple-value-bind
    (second minute hour day month year day-of-week dst-p tz)
    (get-decoded-time)
    (let* ((op (car op-args))
           (end-op (cadr op-args))
           (op-lst (cddr op-args))
           (modification-date (format nil "~a/~a/~a" month day year))
           (modification-time (format nil "~a:~a:~a" hour minute second))
           (access-date (format nil "~a/~a/~a" month day year))
           (access-time (format nil "~a:~a:~a" hour minute second)))

      (format *parser-output* "~a ~a ~a ~a ~a~%"
              op
              modification-date modification-time
              access-date access-time)
      (dolist (new-op-args op-lst)
        (parse-sgds new-op-args))
      (format *parser-output* "~a~%" end-op))))

#|
(defun bgnstr (op-args)
  (let* ((args (cdr op-args))
         (modification-date (car args))
         (modification-time (cadr args))
         (access-date (caddr args))
         (access-time (cadddr args))
         (op-lst (cddddr args)))

      (format *parser-output* "BGNSTR ~a ~a ~a ~a~%"
              modification-date modification-time
              access-date access-time)
      (dolist (new-op-args op-lst)
        (parse-sgds new-op-args))
      (format *parser-output* "ENDSTR~%")))
|#

(defun units (op-args)
  (let* ((op (car op-args))
         (arg0 (cadr op-args))
         (arg1 (caddr op-args)))
    (format *parser-output* "~a ~a ~1,0e~%" op arg0 arg1)))

(defun mos (op-args)
  (let* ((op (car op-args))
         (args (cdr op-args))
         (name (cadr args))
         (op-lst (cddr args)))
    (dolist (new-op-args op-lst)
      (parse-sgds new-op-args))))

(defun one-part (op-args)
  (let* ((op (car op-args))
         (op-lst (cdr op-args)))

      (format *parser-output* "~a~%" op)
      (dolist (new-op-args op-lst)
        (parse-sgds new-op-args))
      (format *parser-output* "ENDEL~%")))

(defun simple-one (op-args)
  (let* ((op (car op-args))
         (arg0 (cadr op-args)))
    (format *parser-output* "~a ~a~%" op arg0)))

(defun sgds (op-args)
  (let ((op (car op-args))
        (op-lst (cdr op-args)))
    (dolist (new-op-args op-lst)
      (parse-sgds new-op-args))))

(defun include-sgds (op-args)
  (let* ((op (car op-args))
		 (file-name (cadr op-args))
		 (s-expr
		   (with-open-file (in file-name)
			 (read in))))

    (dolist (new-op-args s-expr)
      (parse-sgds new-op-args))))


(defun include-file (op-args)
  (let ((op (car op-args))
        (file-name (cadr op-args)))

    (with-open-stream (stream (open file-name :direction :input))
      (do ((line (read-line stream)
                 (read-line stream nil nil)))
        ((null line))

        (format *parser-output* "~a~%" line)))))

(defun swap-cons (a lst)
	(let ((arg0 (car lst))
		  (remain (cdr lst)))
	  (cons arg0 (cons a remain))))

(defun bgnstr (op-args)
	(bgn-op (swap-cons :ENDSTR op-args)))

(defun bgnlib (op-args)
	(bgn-op (swap-cons :ENDLIB op-args)))

(defun none (op-args))

(defun op-to-func (op)
    (case op
      (:sgds #'sgds)
      (:bgnlib #'bgnlib)
      (:units #'units)
      (:bgnstr #'bgnstr)
      (:nmos #'mos)
      (:pmos #'mos)
      (:boundary #'one-part)
      (:path #'one-part)
      (:sref #'one-part)
      (:xy #'xy)
      (:include #'include-file)
      (:include-sgds #'include-sgds)
      (:none #'none)
      (otherwise #'simple-one)))
       
;----------------------------------------------------------------
(defun parse-sgds (gds-list)
    (let* ((op-func-sym (car gds-list))
           (remain (cdr gds-list))
           (op-func (op-to-func op-func-sym)))
      (if (listp op-func-sym)
        (dolist (new-gds-list gds-list)
            (parse-sgds new-gds-list))
        (funcall op-func gds-list))))

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

#|
(parse-sgds '(:xy (10 20) (-10 200)))

(parse-sgds '(:BOUNDARY (:LAYER 18) (:DATATYPE 0)
   (:XY (-500 -496.5) (-500 6503.5) (2500 6503.5) (2500 -496.5) (-500 -496.5))))
|#

#|
(parse-sgds '(:sgds (:HEADER 600)  (:BGNLIB (:LIBNAME "LIB") (:UNITS 0.001 1.0E-9)
				     (:include "lib/openrule1um.gds")
                     (:BGNSTR (:STRNAME "HComponent")

(:SREF 
(:SNAME "dcont")
(:STRANS 0)
(:ANGLE 180) 
(:XY (2000 71500)))

                     ))))
|#

#|
(parse-sgds
  '(:SGDS (:HEADER 600)
          (:BGNLIB (:LIBNAME "LIB") (:UNITS ("0.001" "1e-09"))
                   (:INCLUDE "lib/openrule1um.gds")
                   (:BGNSTR (:STRNAME "TOP")
                            ((:PMOS :NAME "M1"
                                    (:BOUNDARY (:LAYER 18) (:DATATYPE 0)
                                               (:XY (-500 27500) (-500 34500) (2500 34500) (2500 27500) (-500 27500)))
                                    (:BOUNDARY (:LAYER 18) (:DATATYPE 0)
                                               (:XY (0 28000) (0 35000) (2000 35000) (2000 28000) (0 28000)))
                                    (:SREF (:SNAME "dcont") (:STRANS 0) (:ANGLE 180) (:XY (0 28000)))
                                    (:SREF (:SNAME "dcont") (:STRANS 0) (:ANGLE 180) (:XY (0 32000)))
                                    (:PATH (:LAYER 5) (:DATATYPE 0) (:PATHTYPE 0) (:WIDTH 1000)
                                           (:XY (-1000 31000) (-1000 31000)))
                                    (:SREF (:SNAME "pcont") (:STRANS 0) (:ANGLE 180) (:XY (3000 30000)))))))))
|#
