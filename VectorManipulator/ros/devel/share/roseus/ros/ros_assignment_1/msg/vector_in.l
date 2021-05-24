;; Auto-generated. Do not edit!


(when (boundp 'ros_assignment_1::vector_in)
  (if (not (find-package "ROS_ASSIGNMENT_1"))
    (make-package "ROS_ASSIGNMENT_1"))
  (shadow 'vector_in (find-package "ROS_ASSIGNMENT_1")))
(unless (find-package "ROS_ASSIGNMENT_1::VECTOR_IN")
  (make-package "ROS_ASSIGNMENT_1::VECTOR_IN"))

(in-package "ROS")
;;//! \htmlinclude vector_in.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ros_assignment_1::vector_in
  :super ros::object
  :slots (_vector _angle _distance ))

(defmethod ros_assignment_1::vector_in
  (:init
   (&key
    ((:vector __vector) (instance geometry_msgs::Point :init))
    ((:angle __angle) (instance geometry_msgs::Point :init))
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _vector __vector)
   (setq _angle __angle)
   (setq _distance (float __distance))
   self)
  (:vector
   (&rest __vector)
   (if (keywordp (car __vector))
       (send* _vector __vector)
     (progn
       (if __vector (setq _vector (car __vector)))
       _vector)))
  (:angle
   (&rest __angle)
   (if (keywordp (car __angle))
       (send* _angle __angle)
     (progn
       (if __angle (setq _angle (car __angle)))
       _angle)))
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _vector
    (send _vector :serialization-length)
    ;; geometry_msgs/Point _angle
    (send _angle :serialization-length)
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _vector
       (send _vector :serialize s)
     ;; geometry_msgs/Point _angle
       (send _angle :serialize s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _vector
     (send _vector :deserialize buf ptr-) (incf ptr- (send _vector :serialization-length))
   ;; geometry_msgs/Point _angle
     (send _angle :deserialize buf ptr-) (incf ptr- (send _angle :serialization-length))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_assignment_1::vector_in :md5sum-) "c3f752c00d0fcadb1566ee98436f6d75")
(setf (get ros_assignment_1::vector_in :datatype-) "ros_assignment_1/vector_in")
(setf (get ros_assignment_1::vector_in :definition-)
      "geometry_msgs/Point vector
geometry_msgs/Point angle
float64 distance
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :ros_assignment_1/vector_in "c3f752c00d0fcadb1566ee98436f6d75")


