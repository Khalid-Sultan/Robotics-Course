; Auto-generated. Do not edit!


(cl:in-package ros_assignment_1-msg)


;//! \htmlinclude vector_in.msg.html

(cl:defclass <vector_in> (roslisp-msg-protocol:ros-message)
  ((vector
    :reader vector
    :initarg :vector
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (angle
    :reader angle
    :initarg :angle
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass vector_in (<vector_in>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vector_in>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vector_in)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_assignment_1-msg:<vector_in> is deprecated: use ros_assignment_1-msg:vector_in instead.")))

(cl:ensure-generic-function 'vector-val :lambda-list '(m))
(cl:defmethod vector-val ((m <vector_in>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_assignment_1-msg:vector-val is deprecated.  Use ros_assignment_1-msg:vector instead.")
  (vector m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <vector_in>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_assignment_1-msg:angle-val is deprecated.  Use ros_assignment_1-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <vector_in>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_assignment_1-msg:distance-val is deprecated.  Use ros_assignment_1-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vector_in>) ostream)
  "Serializes a message object of type '<vector_in>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vector) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angle) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vector_in>) istream)
  "Deserializes a message object of type '<vector_in>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vector) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angle) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vector_in>)))
  "Returns string type for a message object of type '<vector_in>"
  "ros_assignment_1/vector_in")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vector_in)))
  "Returns string type for a message object of type 'vector_in"
  "ros_assignment_1/vector_in")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vector_in>)))
  "Returns md5sum for a message object of type '<vector_in>"
  "c3f752c00d0fcadb1566ee98436f6d75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vector_in)))
  "Returns md5sum for a message object of type 'vector_in"
  "c3f752c00d0fcadb1566ee98436f6d75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vector_in>)))
  "Returns full string definition for message of type '<vector_in>"
  (cl:format cl:nil "geometry_msgs/Point vector~%geometry_msgs/Point angle~%float64 distance~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vector_in)))
  "Returns full string definition for message of type 'vector_in"
  (cl:format cl:nil "geometry_msgs/Point vector~%geometry_msgs/Point angle~%float64 distance~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vector_in>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vector))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angle))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vector_in>))
  "Converts a ROS message object to a list"
  (cl:list 'vector_in
    (cl:cons ':vector (vector msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':distance (distance msg))
))
