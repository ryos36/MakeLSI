
(eval-layout
   (layout-h
       (layout-v
          (margin-v -4000)
          (make-pmos :m15 :pcont :left)
          (margin-v 2000)
          (make-nmos :m16 :pcont :left))
       (margin-h -4500)
	   (layout-v
          (make-pmos :m17 :pcont :left)
          (margin-v 17000)
          (make-nmos :m18 :pcont :left))
       (margin-h -4500)
	   (layout-v
          (margin-v -4000)
          (make-pmos :m19 :pcont :left)
          (margin-v 2000)
          (make-nmos :m20 :pcont :left))
	   (layout-v
          (make-pmos :m21 :pcont :left)
          (margin-v 7000)
          (make-nmos :m22 :pcont :left))))
