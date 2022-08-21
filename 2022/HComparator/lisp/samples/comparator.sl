(eval-layout
  (layout-h
    (layout-v
      (make-pmos :m1 :pcont :right)
	  (margin-v 13500)
      (make-nmos :m2 :pcont :left))
    (margin-h -6000)

    (layout-v
	  (margin-v -4000)
      (make-pmos :m4 :pcont :left)
	  (margin-v 4500)
      (make-nmos :m3 :pcont :left))
    (margin-h -6500)

    (layout-v
      (margin-v 13500)
      (make-nmos :m5))
    (margin-h -6500)

    (layout-v
      (make-pmos :m6 :pcont :left)
      (margin-v 9500)
      (make-nmos :m7 :pcont :right))

    (margin-h -3000)
    (layout-v
      (margin-v -4000)
      (make-pmos :m8 :pcont :right)
      (margin-v 4500)
      (make-nmos :m9 :pcont :left))

     (margin-h -6500)
     (layout-v
       (margin-v 9500)
       (make-nmos :m11 :pcont :right))

     (margin-h -6500)
     (layout-v
       (make-pmos :m12 :pcont :right)
       (margin-v 17500)
       (make-nmos :m10 :pcont :right))

     (margin-h -6500)
     (layout-v
       (margin-v 9500)
       (make-nmos :m13 :pcont :left))

     (margin-h -6500)
     (layout-v
       (margin-v 9500)
       (make-nmos :m14 :pcont :right))
     (margin-h -3000)

     (layout-v
       (margin-v -4000)
       (make-pmos :m15 :pcont :left)
       (margin-v 4500)
       (make-nmos :m16 :pcont :left))
     (margin-h -4500)

	 (layout-v
       (make-pmos :m17 :pcont :left)
       (margin-v 17500)
       (make-nmos :m18 :pcont :left))
     (margin-h -5500)

	 (layout-v
       (margin-v -4000)
       (make-pmos :m19 :pcont :left)
       (margin-v 4500)
       (make-nmos :m20 :pcont :left))

     ;---

	   (layout-v
          (make-pmos :m21 :pcont :left)
          (margin-v 7000)
          (make-nmos :m22 :pcont :left))))
