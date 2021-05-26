;; Auto-generated. Do not edit!


(when (boundp 'arm_lib::Angles)
  (if (not (find-package "ARM_LIB"))
    (make-package "ARM_LIB"))
  (shadow 'Angles (find-package "ARM_LIB")))
(unless (find-package "ARM_LIB::ANGLES")
  (make-package "ARM_LIB::ANGLES"))

(in-package "ROS")
;;//! \htmlinclude Angles.msg.html


(defclass arm_lib::Angles
  :super ros::object
  :slots (_arm1_angle _arm2_angle _arm3_angle _arm4_angle ))

(defmethod arm_lib::Angles
  (:init
   (&key
    ((:arm1_angle __arm1_angle) 0.0)
    ((:arm2_angle __arm2_angle) 0.0)
    ((:arm3_angle __arm3_angle) 0.0)
    ((:arm4_angle __arm4_angle) 0.0)
    )
   (send-super :init)
   (setq _arm1_angle (float __arm1_angle))
   (setq _arm2_angle (float __arm2_angle))
   (setq _arm3_angle (float __arm3_angle))
   (setq _arm4_angle (float __arm4_angle))
   self)
  (:arm1_angle
   (&optional __arm1_angle)
   (if __arm1_angle (setq _arm1_angle __arm1_angle)) _arm1_angle)
  (:arm2_angle
   (&optional __arm2_angle)
   (if __arm2_angle (setq _arm2_angle __arm2_angle)) _arm2_angle)
  (:arm3_angle
   (&optional __arm3_angle)
   (if __arm3_angle (setq _arm3_angle __arm3_angle)) _arm3_angle)
  (:arm4_angle
   (&optional __arm4_angle)
   (if __arm4_angle (setq _arm4_angle __arm4_angle)) _arm4_angle)
  (:serialization-length
   ()
   (+
    ;; float32 _arm1_angle
    4
    ;; float32 _arm2_angle
    4
    ;; float32 _arm3_angle
    4
    ;; float32 _arm4_angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _arm1_angle
       (sys::poke _arm1_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arm2_angle
       (sys::poke _arm2_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arm3_angle
       (sys::poke _arm3_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arm4_angle
       (sys::poke _arm4_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _arm1_angle
     (setq _arm1_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arm2_angle
     (setq _arm2_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arm3_angle
     (setq _arm3_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arm4_angle
     (setq _arm4_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get arm_lib::Angles :md5sum-) "d1b7ee805afcab3ec788a0b100202f1a")
(setf (get arm_lib::Angles :datatype-) "arm_lib/Angles")
(setf (get arm_lib::Angles :definition-)
      "float32 arm1_angle
float32 arm2_angle
float32 arm3_angle
float32 arm4_angle 

")



(provide :arm_lib/Angles "d1b7ee805afcab3ec788a0b100202f1a")


