
(eval-layout
   (layout-h
       (layout-v
          (margin-v -4000)
          (make-pmos :m8 :pcont :right)
          (margin-v 2000)
          (make-nmos :m9 :pcont :left))
       (margin-h -6500)
       (layout-v
          (margin-v 7000)
          (make-nmos :m11 :pcont :right))
       (margin-h -6500)
       (layout-v
          (make-pmos :m12 :pcont :right)
          (margin-v 15000)
          (make-nmos :m10 :pcont :right))
       (margin-h -6500)
       (layout-v
          (margin-v 7000)
          (make-nmos :m13 :pcont :left))
       (margin-h -6500)
       (layout-v
          (margin-v 7000)
          (make-nmos :m14 :pcont :right))))
