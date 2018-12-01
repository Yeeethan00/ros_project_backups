;; Auto-generated. Do not edit!


(when (boundp 'rbx2_msgs::SetBatteryLevel)
  (if (not (find-package "RBX2_MSGS"))
    (make-package "RBX2_MSGS"))
  (shadow 'SetBatteryLevel (find-package "RBX2_MSGS")))
(unless (find-package "RBX2_MSGS::SETBATTERYLEVEL")
  (make-package "RBX2_MSGS::SETBATTERYLEVEL"))
(unless (find-package "RBX2_MSGS::SETBATTERYLEVELREQUEST")
  (make-package "RBX2_MSGS::SETBATTERYLEVELREQUEST"))
(unless (find-package "RBX2_MSGS::SETBATTERYLEVELRESPONSE")
  (make-package "RBX2_MSGS::SETBATTERYLEVELRESPONSE"))

(in-package "ROS")





(defclass rbx2_msgs::SetBatteryLevelRequest
  :super ros::object
  :slots (_value ))

(defmethod rbx2_msgs::SetBatteryLevelRequest
  (:init
   (&key
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _value (float __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rbx2_msgs::SetBatteryLevelResponse
  :super ros::object
  :slots ())

(defmethod rbx2_msgs::SetBatteryLevelResponse
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

(defclass rbx2_msgs::SetBatteryLevel
  :super ros::object
  :slots ())

(setf (get rbx2_msgs::SetBatteryLevel :md5sum-) "0aca93dcf6d857f0e5a0dc6be1eaa9fb")
(setf (get rbx2_msgs::SetBatteryLevel :datatype-) "rbx2_msgs/SetBatteryLevel")
(setf (get rbx2_msgs::SetBatteryLevel :request) rbx2_msgs::SetBatteryLevelRequest)
(setf (get rbx2_msgs::SetBatteryLevel :response) rbx2_msgs::SetBatteryLevelResponse)

(defmethod rbx2_msgs::SetBatteryLevelRequest
  (:response () (instance rbx2_msgs::SetBatteryLevelResponse :init)))

(setf (get rbx2_msgs::SetBatteryLevelRequest :md5sum-) "0aca93dcf6d857f0e5a0dc6be1eaa9fb")
(setf (get rbx2_msgs::SetBatteryLevelRequest :datatype-) "rbx2_msgs/SetBatteryLevelRequest")
(setf (get rbx2_msgs::SetBatteryLevelRequest :definition-)
      "float32 value
---

")

(setf (get rbx2_msgs::SetBatteryLevelResponse :md5sum-) "0aca93dcf6d857f0e5a0dc6be1eaa9fb")
(setf (get rbx2_msgs::SetBatteryLevelResponse :datatype-) "rbx2_msgs/SetBatteryLevelResponse")
(setf (get rbx2_msgs::SetBatteryLevelResponse :definition-)
      "float32 value
---

")



(provide :rbx2_msgs/SetBatteryLevel "0aca93dcf6d857f0e5a0dc6be1eaa9fb")


