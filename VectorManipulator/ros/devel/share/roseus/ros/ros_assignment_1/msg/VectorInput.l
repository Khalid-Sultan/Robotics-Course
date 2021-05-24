;; Auto-generated. Do not edit!


(when (boundp 'ros_assignment_1::VectorInput)
  (if (not (find-package "ROS_ASSIGNMENT_1"))
    (make-package "ROS_ASSIGNMENT_1"))
  (shadow 'VectorInput (find-package "ROS_ASSIGNMENT_1")))
(unless (find-package "ROS_ASSIGNMENT_1::VECTORINPUT")
  (make-package "ROS_ASSIGNMENT_1::VECTORINPUT"))

(in-package "ROS")
;;//! \htmlinclude VectorInput.msg.html


(defclass ros_assignment_1::VectorInput
  :super ros::object
  :slots (_x _y _z _alpha _beta _gamma _dx _dy _dz ))

(defmethod ros_assignment_1::VectorInput
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:alpha __alpha) 0.0)
    ((:beta __beta) 0.0)
    ((:gamma __gamma) 0.0)
    ((:dx __dx) 0.0)
    ((:dy __dy) 0.0)
    ((:dz __dz) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _alpha (float __alpha))
   (setq _beta (float __beta))
   (setq _gamma (float __gamma))
   (setq _dx (float __dx))
   (setq _dy (float __dy))
   (setq _dz (float __dz))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:alpha
   (&optional __alpha)
   (if __alpha (setq _alpha __alpha)) _alpha)
  (:beta
   (&optional __beta)
   (if __beta (setq _beta __beta)) _beta)
  (:gamma
   (&optional __gamma)
   (if __gamma (setq _gamma __gamma)) _gamma)
  (:dx
   (&optional __dx)
   (if __dx (setq _dx __dx)) _dx)
  (:dy
   (&optional __dy)
   (if __dy (setq _dy __dy)) _dy)
  (:dz
   (&optional __dz)
   (if __dz (setq _dz __dz)) _dz)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _alpha
    8
    ;; float64 _beta
    8
    ;; float64 _gamma
    8
    ;; float64 _dx
    8
    ;; float64 _dy
    8
    ;; float64 _dz
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alpha
       (sys::poke _alpha (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _beta
       (sys::poke _beta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gamma
       (sys::poke _gamma (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dx
       (sys::poke _dx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dy
       (sys::poke _dy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dz
       (sys::poke _dz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alpha
     (setq _alpha (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _beta
     (setq _beta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gamma
     (setq _gamma (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dx
     (setq _dx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dy
     (setq _dy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dz
     (setq _dz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_assignment_1::VectorInput :md5sum-) "62b38fb50e34d3bc1ef194d47c852b37")
(setf (get ros_assignment_1::VectorInput :datatype-) "ros_assignment_1/VectorInput")
(setf (get ros_assignment_1::VectorInput :definition-)
      "float64 x
float64 y
float64 z
float64 alpha
float64 beta
float64 gamma
float64 dx
float64 dy
float64 dz
")



(provide :ros_assignment_1/VectorInput "62b38fb50e34d3bc1ef194d47c852b37")


