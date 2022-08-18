(eval-layout
  (layout-h
    (layout-v
      (make-pmos :m1 :pcont :right)
      (make-nmos :m2 :pcont :right))
    (layout-v
	  (margin-v -2000)
      (make-pmos :m4 :pcont :left)
      (make-nmos :m3 :pcont :left))
    (margin-h -6500)
    (layout-v
      (margin-v 11000)
      (make-nmos :m5))))
