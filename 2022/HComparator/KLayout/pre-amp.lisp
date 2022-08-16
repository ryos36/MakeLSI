(defparameter *layout-x* 0)
(defparameter *layout-y* 0)

(defun layout-h (&rest lst)
	(mapcar #'(lambda (x) (print x)
		(setf *layout-y* (+ *layout-y* 8000))) lst))

(defun layout-v (&rest lst)
	(mapcar #'(lambda (x) (print x) 
		(setf *layout-x* (+ *layout-x* 2000))) lst))

(defun make-rect (x0 y0 x1 y1)
	(let ((p0 `(,x0 ,y0))
	      (p1 `(,x0 ,y1))
		  (p2 `(,x1 ,y1))
		  (p3 `(,x1 ,y0))
		  (p4 `(,x0 ,y0)))

		`(:xy ,(list p0 p1 p2 p3 p4))))
	
#|
SREF 
SNAME dcont
STRANS 0 
ANGLE 180 
XY -123500: 74000
ENDEL 
|#

(defun make-dcont (&optional (delta-y 0))
	(let* ((x0 *layout-x*)
		   (y0 (+ *layout-y* delta-y))
		   (p0 `(,x0 ,y0)))

		`(:sref :sname "dcont"
		        :strans 0
				:angle 180
				:xy ,(list p0))))

(defun make-parea ()
	(let* ((x0 (- *layout-x* 500))
		   (y0 (- *layout-y* 500))
		   (x1 (+ x0 3000))
		   (y1 (+ y0 7000)))

		   `(:baundary (:layer 18 
		                :datatype 0
						,@(make-rect x0 y0 x1 y1)))))

(defun make-diff ()
	(let* ((x0 *layout-x*)
		   (y0 *layout-y*)
		   (x1 (+ x0 2000))
		   (y1 (+ y0 7000)))

		   `(:baundary (:layer 18 
		                :datatype 0
						,@(make-rect x0 y0 x1 y1)))))
(defun make-mos-pol ()
	(let* ((x0 (- *layout-x* 1000))
		   (y0 (+ *layout-y* 3000))
		   (x1 (+ x0 4000))
		   (y1 y0)
		   (p0 `(,x0 ,y0))
		   (p1 `(,x0 ,y0)))

		   `(:path (:layer 5 
		            :datatype 0
					:pathtype 0
					:width 1000
					:xy ,(list p0 p1)))))

(defun make-pcont (x y)
  (let ((p0 `(,x ,y)))
	`(:sref :sname "pcont"
			:strans 0
			:angle 180
			:xy ,(list p0))))

(defun make-mos (mos-type name-sym &key pcont)
	(let ((pcont-x (+ *layout-x*
			(if (eq pcont :left) -3000 3000)))
		  (pcont-y (+ *layout-y* 2000)))

		`(,mos-type :name ,(symbol-name name-sym)
				    ,@(make-parea)
				    ,@(make-diff)
				    ,@(make-dcont)
				    ,@(make-dcont 4000)
				    ,@(make-mos-pol)
				    ,@(if pcont
						(make-pcont pcont-x pcont-y)))))

(defun make-pmos (name-sym &key pcont)
	(make-mos :pmos name-sym :pcont pcont))

(defun make-nmos (name-sym &key pcont)
	(make-mos :nmos name-sym :pcont pcont))

(defun margin-v (num))

(layout-h
	(layout-v
		(make-pmos :m1 :pcont :right)
		(make-nmos :m2 :pcont :right))
	(layout-v
		(margin-v 0.5)
		(make-pmos :m4 :pcont :left)
		(make-nmos :m3 :pcont :left))
	(layout-v
		(margin-v 3)
		(make-nmos :m5))
	(layout-v
		(make-pmos :m6 :pcont :left)
		(make-nmos :m7 :pcont :right)))

