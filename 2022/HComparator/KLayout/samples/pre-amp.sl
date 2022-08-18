(eval-layout
  (layout-h
    (layout-v
      (make-pmos :m1 :pcont :right)
	  (margin-v 7000)
      (make-nmos :m2 :pcont :right))
    (layout-v
	  (margin-v -4000)
      (make-pmos :m4 :pcont :left)
	  (margin-v 2000)
      (make-nmos :m3 :pcont :left))
    (margin-h -6500)
    (layout-v
      (margin-v 11000)
      (make-nmos :m5))
    (margin-h -6500)
    (layout-v
      (make-pmos :m6 :pcont :left)
      (margin-v 7000)
      (make-nmos :m7 :pcont :right))))
