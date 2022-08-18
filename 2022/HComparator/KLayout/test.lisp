(setf x 3)

(defmacro layout-x (&rest body)
	(let (new-lst)
		(dolist (i body)
			(push i new-lst)
			(push '(incf x) new-lst))
		`(let ((x 3))
			,@new-lst
			x )))

(defmacro layout-y (&rest body)
	(let (new-lst)
		(dolist (i body)
			(push i new-lst)
			(push '(incf y) new-lst))
		`(let ((y 103))
			,@new-lst
			y )))

(print
(layout-x 
	(layout-y
	  (print '(:here))
	  (print '(:here))
	  (print '(:here)))
	(layout-y
	  (print '(:here))
	  (print '(:here))
	  (print '(:here)))))
