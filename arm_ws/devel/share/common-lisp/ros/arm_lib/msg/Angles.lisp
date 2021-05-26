; Auto-generated. Do not edit!


(cl:in-package arm_lib-msg)


;//! \htmlinclude Angles.msg.html

(cl:defclass <Angles> (roslisp-msg-protocol:ros-message)
  ((arm1_angle
    :reader arm1_angle
    :initarg :arm1_angle
    :type cl:float
    :initform 0.0)
   (arm2_angle
    :reader arm2_angle
    :initarg :arm2_angle
    :type cl:float
    :initform 0.0)
   (arm3_angle
    :reader arm3_angle
    :initarg :arm3_angle
    :type cl:float
    :initform 0.0)
   (arm4_angle
    :reader arm4_angle
    :initarg :arm4_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass Angles (<Angles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Angles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Angles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_lib-msg:<Angles> is deprecated: use arm_lib-msg:Angles instead.")))

(cl:ensure-generic-function 'arm1_angle-val :lambda-list '(m))
(cl:defmethod arm1_angle-val ((m <Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:arm1_angle-val is deprecated.  Use arm_lib-msg:arm1_angle instead.")
  (arm1_angle m))

(cl:ensure-generic-function 'arm2_angle-val :lambda-list '(m))
(cl:defmethod arm2_angle-val ((m <Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:arm2_angle-val is deprecated.  Use arm_lib-msg:arm2_angle instead.")
  (arm2_angle m))

(cl:ensure-generic-function 'arm3_angle-val :lambda-list '(m))
(cl:defmethod arm3_angle-val ((m <Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:arm3_angle-val is deprecated.  Use arm_lib-msg:arm3_angle instead.")
  (arm3_angle m))

(cl:ensure-generic-function 'arm4_angle-val :lambda-list '(m))
(cl:defmethod arm4_angle-val ((m <Angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:arm4_angle-val is deprecated.  Use arm_lib-msg:arm4_angle instead.")
  (arm4_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Angles>) ostream)
  "Serializes a message object of type '<Angles>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm1_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm2_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm3_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm4_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Angles>) istream)
  "Deserializes a message object of type '<Angles>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm1_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm2_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm3_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm4_angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Angles>)))
  "Returns string type for a message object of type '<Angles>"
  "arm_lib/Angles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Angles)))
  "Returns string type for a message object of type 'Angles"
  "arm_lib/Angles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Angles>)))
  "Returns md5sum for a message object of type '<Angles>"
  "d1b7ee805afcab3ec788a0b100202f1a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Angles)))
  "Returns md5sum for a message object of type 'Angles"
  "d1b7ee805afcab3ec788a0b100202f1a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Angles>)))
  "Returns full string definition for message of type '<Angles>"
  (cl:format cl:nil "float32 arm1_angle~%float32 arm2_angle~%float32 arm3_angle~%float32 arm4_angle ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Angles)))
  "Returns full string definition for message of type 'Angles"
  (cl:format cl:nil "float32 arm1_angle~%float32 arm2_angle~%float32 arm3_angle~%float32 arm4_angle ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Angles>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Angles>))
  "Converts a ROS message object to a list"
  (cl:list 'Angles
    (cl:cons ':arm1_angle (arm1_angle msg))
    (cl:cons ':arm2_angle (arm2_angle msg))
    (cl:cons ':arm3_angle (arm3_angle msg))
    (cl:cons ':arm4_angle (arm4_angle msg))
))
