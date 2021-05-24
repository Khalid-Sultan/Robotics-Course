
(cl:in-package :asdf)

(defsystem "ros_assignment_1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "VectorInput" :depends-on ("_package_VectorInput"))
    (:file "_package_VectorInput" :depends-on ("_package"))
    (:file "VectorOutput" :depends-on ("_package_VectorOutput"))
    (:file "_package_VectorOutput" :depends-on ("_package"))
  ))