(eval-when (:execute :load-toplevel :compile-toplevel)
  #-:asdf (load "/usr/share/common-lisp/source/cl-asdf/asdf.lisp")
  #-:cl-annot (require "cl-annot")
  #-:cl-fad (require "cl-fad")
  #-:cl-fad (require "cl-clasp")
  #-:uffi (require "uffi")
  #-:ironclad (require "ironclad")
  )
(annot:enable-annot-syntax)

(defparameter *layout-x* 2000)
(defparameter *layout-x-delta* 12000)
(defparameter *layout-y* 71500)
(defparameter *layout-y-delta* -9000)
(defparameter *layout-stack* nil)

(defparameter *margin-function-table* nil)
(defparameter *parts-function-table* nil)

(defun margin-function (func)
	(push func *margin-function-table*))

(defun parts-function (func)
	(push func *parts-function-table*))

(defmacro make-layout (ax-sym delta-sym &rest lst)
  (let ((new-lst nil)
		(first-flag t))
	(dolist (i lst)
	  (let ((func-sym (car i)))
		(if (and (not first-flag) (not (member func-sym *margin-function-table*)))
            (push (copy-tree `(setf ,ax-sym (+ ,ax-sym ,delta-sym))) new-lst))

		(push (if (member func-sym *parts-function-table*) `(push ,i *layout-stack*) i) new-lst)
        (setf first-flag nil)))

	   `(let ((,ax-sym ,ax-sym))
		  ,@(nreverse new-lst))))

(defmacro layout-h (&rest xlst)
	`(make-layout *layout-x* *layout-x-delta* ,@xlst))

(defmacro layout-v (&rest xlst)
	`(make-layout *layout-y* *layout-y-delta* ,@xlst))

#|
(defun layout-h (&rest lst)
  (let ((*layout-x* *layout-x*))
	(dolist (i lst)
	  (let* ((func-sym (car i))
			 (result (expr i)))
		(if (member func-sym *parts-function-table*)
		  (push result *layout-stack*))
		(if (not (member func-sym *margin-function-table*))
		  (setf *layout-x* (+ *layout-x* *layout-x-delta*)))))))

(defun layout-v (&rest lst)
  (let ((*layout-y* *layout-y*))
	(dolist (i lst)
	  (let* ((func-sym (car i))
			 (result (expr i)))
		(if (member func-sym *parts-function-table*)
		  (push result *layout-stack*))
		(if (not (member func-sym *margin-function-table*))
		  (setf *layout-y* (+ *layout-y* *layout-y-delta*)))))))
|#

;----------------------------------------------------------------
(defun make-rect (x0 y0 x1 y1)
	(let ((p0 `(,x0 ,y0))
	      (p1 `(,x0 ,y1))
		  (p2 `(,x1 ,y1))
		  (p3 `(,x1 ,y0))
		  (p4 `(,x0 ,y0)))

		`(:xy ,p0 ,p1 ,p2 ,p3 ,p4)))
	

@parts-function
(defun make-dcont (&optional (delta-y 0))
	(let* ((x0 *layout-x*)
		   (y0 (+ *layout-y* delta-y))
		   (p0 `(,x0 ,y0)))

	;(print `(:dcont (,x0 ,y0)))
		`(:sref (:sname "dcont")
		        (:strans 0)
				(:angle 180)
				(:xy ,p0))))

@parts-function
(defun make-darea (mos-type)
	(let* ((x0 (- *layout-x* 1500))
		   (y0 (- *layout-y* 1500))
		   (x1 (+ x0 3000))
		   (y1 (+ y0 7000))
		   (name (if (eq mos-type :pmos) :parea :narea))
		   (layer (if (eq mos-type :pmos) 18 19)))

		   `(:boundary (:layer ,layer)
		               (:datatype 0)
						,(make-rect x0 y0 x1 y1))))

@parts-function
(defun make-diff ()
	(let* ((x0 (- *layout-x* 1000))
		   (y0 (- *layout-y* 1000))
		   (x1 (+ x0 2000))
		   (y1 (+ y0 6000)))

	;(print `;(:diff (,x0 ,y0)))
		   `(:boundary (:layer 3)
		               (:datatype 0)
						,(make-rect x0 y0 x1 y1))))

@parts-function
(defun make-mos-pol ()
	(let* ((x0 (- *layout-x* 2000))
		   (y0 (+ *layout-y* 2000))
		   (x1 (+ x0 4000))
		   (y1 y0)
		   (p0 `(,x0 ,y0))
		   (p1 `(,x1 ,y1)))

		   `(:path (:layer 5 )
		           (:datatype 0)
				   (:pathtype 0)
				   (:width 1000)
				   (:xy ,p0 ,p1))))

@parts-function
(defun make-pcont (x y)
  (let ((p0 `(,x ,y)))
	`(:sref (:sname "pcont")
			(:strans 0)
			(:angle 180)
			(:xy ,p0))))

(defun make-mos (mos-type name-sym &key pcont)
	(let ((pcont-x (+ *layout-x*
			(if (eq pcont :left) -3000 3000)))
		  (pcont-y (+ *layout-y* 2000)))

		`(,mos-type :name ,(symbol-name name-sym)
				    ,(make-darea mos-type)
				    ,(make-diff)
				    ,(make-dcont)
				    ,(make-dcont 4000)
				    ,(make-mos-pol)
				    ,(if pcont
						(make-pcont pcont-x pcont-y)
                        '(:none)))))

@parts-function
(defun make-pmos (name-sym &key pcont)
	(make-mos :pmos name-sym :pcont pcont))

@parts-function
(defun make-nmos (name-sym &key pcont)
	(make-mos :nmos name-sym :pcont pcont))

@margin-function
(defun margin-h (num)
	(setf *layout-x* (+ *layout-x* num)))

@margin-function
(defun margin-v (num)
	(setf *layout-y* (- *layout-y* num)))

(defmacro eval-layout (&rest body)
	`(let ((*layout-stack* *layout-stack*))
		,@body
        *layout-stack*))

(defun make-fix-sgds (top-name rulelib &rest body)
    `(:SGDS
	   (:HEADER 600)
	   	,(make-lib "LIB" 
		           '(:UNITS "0.001" "1e-09")
		  		   `(:include ,rulelib)
                   (eval `(make-str ,top-name ',@body)))))

(defun make-sgds (&rest body)
    `(:SGDS
		(:HEADER 600)
		  ,@body))
 
(defun make-lib (name units &rest body)
	`(:BGNLIB
		(:LIBNAME ,name)
		,units
		,@body))

(defun make-str (name &rest body)
	`(:BGNSTR (:strname ,name)
		,@body))
;----------------------------------------------------------------

(setf test-lst '(layout-h
				  (layout-v
					(make-pmos :m1 :pcont :right)
					(make-nmos :m2 :pcont :right))
				  (layout-v
					(margin-v 4000)
					(make-pmos :m4 :pcont :left)
					(make-nmos :m3 :pcont :left))
				  (layout-v
					(margin-v (* 3 8000))
					(make-nmos :m5))
				  (layout-v
					(make-pmos :m6 :pcont :left)
					(make-nmos :m7 :pcont :right))))

;(print `(:layout ,(macroexpand-1 test-lst)))
;(print (make-lib "LIB" '(:units 0 0) (make-str "HComponent" (eval-layout (eval test-lst)))))

#|
(print (make-sgds 
        (make-lib "LIB" '(:units "0.001" "1e-09")
		  (make-str "my-comp" 
					(eval-layout 
					  (layout-h
						(layout-v
						  (make-pmos :m1 :pcont :right)
						  (make-nmos :m2 :pcont :right))
						(layout-v
						  (margin-v 4000)
						  (make-pmos :m4 :pcont :left)
						  (make-nmos :m3 :pcont :left))
						(layout-v
						  (margin-v (* 3 8000))
						  (make-nmos :m5))
						(layout-v
						  (make-pmos :m6 :pcont :left)
						  (make-nmos :m7 :pcont :right))))))))

|#

#|
(setf lst 
  '(eval-layout (layout-h
    (layout-v
      (make-pmos :m1 :pcont :right)
      (make-nmos :m2 :pcont :right))
    (layout-v
      (margin-v 4000)
      (make-pmos :m4 :pcont :left)
      (make-nmos :m3 :pcont :left))
    (layout-v
      (margin-v (* 3 8000))
      (make-nmos :m5))
    (layout-v
      (make-pmos :m6 :pcont :left)
      (make-nmos :m7 :pcont :right)))))

(print (eval `(make-sgds 
          (make-lib "LIB" '(:units "0.001" "1e-09")
                    (make-str "my-comp" 
                              (eval-layout 
                                ,lst
                                ))))))

|#
;(print (eval `(make-fix-sgds "TOP" "lib/openrule1um.gds" ,lst)))

;(setf lst '(make-pmos :m6 :pcont :left))
;(print (eval `(make-fix-sgds "TOP" "lib/openrule1um.gds" ,lst)))
