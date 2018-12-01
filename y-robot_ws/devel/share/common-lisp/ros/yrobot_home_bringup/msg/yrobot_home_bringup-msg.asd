
(cl:in-package :asdf)

(defsystem "yrobot_home_bringup-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "joint_msg" :depends-on ("_package_joint_msg"))
    (:file "_package_joint_msg" :depends-on ("_package"))
  ))