;; Auto-generated. Do not edit!


(when (boundp 'my_sensor::FakeSensor)
  (if (not (find-package "MY_SENSOR"))
    (make-package "MY_SENSOR"))
  (shadow 'FakeSensor (find-package "MY_SENSOR")))
(unless (find-package "MY_SENSOR::FAKESENSOR")
  (make-package "MY_SENSOR::FAKESENSOR"))
(unless (find-package "MY_SENSOR::FAKESENSORREQUEST")
  (make-package "MY_SENSOR::FAKESENSORREQUEST"))
(unless (find-package "MY_SENSOR::FAKESENSORRESPONSE")
  (make-package "MY_SENSOR::FAKESENSORRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass my_sensor::FakeSensorRequest
  :super ros::object
  :slots ())

(defmethod my_sensor::FakeSensorRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass my_sensor::FakeSensorResponse
  :super ros::object
  :slots (_quaternion ))

(defmethod my_sensor::FakeSensorResponse
  (:init
   (&key
    ((:quaternion __quaternion) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _quaternion __quaternion)
   self)
  (:quaternion
   (&rest __quaternion)
   (if (keywordp (car __quaternion))
       (send* _quaternion __quaternion)
     (progn
       (if __quaternion (setq _quaternion (car __quaternion)))
       _quaternion)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Quaternion _quaternion
    (send _quaternion :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Quaternion _quaternion
       (send _quaternion :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Quaternion _quaternion
     (send _quaternion :deserialize buf ptr-) (incf ptr- (send _quaternion :serialization-length))
   ;;
   self)
  )

(defclass my_sensor::FakeSensor
  :super ros::object
  :slots ())

(setf (get my_sensor::FakeSensor :md5sum-) "c3d2506862045c1ddfbe5c9ef23688f4")
(setf (get my_sensor::FakeSensor :datatype-) "my_sensor/FakeSensor")
(setf (get my_sensor::FakeSensor :request) my_sensor::FakeSensorRequest)
(setf (get my_sensor::FakeSensor :response) my_sensor::FakeSensorResponse)

(defmethod my_sensor::FakeSensorRequest
  (:response () (instance my_sensor::FakeSensorResponse :init)))

(setf (get my_sensor::FakeSensorRequest :md5sum-) "c3d2506862045c1ddfbe5c9ef23688f4")
(setf (get my_sensor::FakeSensorRequest :datatype-) "my_sensor/FakeSensorRequest")
(setf (get my_sensor::FakeSensorRequest :definition-)
      "
---
geometry_msgs/Quaternion quaternion


================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get my_sensor::FakeSensorResponse :md5sum-) "c3d2506862045c1ddfbe5c9ef23688f4")
(setf (get my_sensor::FakeSensorResponse :datatype-) "my_sensor/FakeSensorResponse")
(setf (get my_sensor::FakeSensorResponse :definition-)
      "
---
geometry_msgs/Quaternion quaternion


================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :my_sensor/FakeSensor "c3d2506862045c1ddfbe5c9ef23688f4")


