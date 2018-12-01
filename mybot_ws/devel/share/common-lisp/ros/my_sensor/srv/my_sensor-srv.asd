
(cl:in-package :asdf)

(defsystem "my_sensor-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "FakeSensor" :depends-on ("_package_FakeSensor"))
    (:file "_package_FakeSensor" :depends-on ("_package"))
    (:file "Light" :depends-on ("_package_Light"))
    (:file "_package_Light" :depends-on ("_package"))
  ))