;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::Servo)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'Servo (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::SERVO")
  (make-package "NASA_R2_COMMON_MSGS::SERVO"))
(unless (find-package "NASA_R2_COMMON_MSGS::SERVOREQUEST")
  (make-package "NASA_R2_COMMON_MSGS::SERVOREQUEST"))
(unless (find-package "NASA_R2_COMMON_MSGS::SERVORESPONSE")
  (make-package "NASA_R2_COMMON_MSGS::SERVORESPONSE"))

(in-package "ROS")





(defclass nasa_r2_common_msgs::ServoRequest
  :super ros::object
  :slots (_joint _state ))

(defmethod nasa_r2_common_msgs::ServoRequest
  (:init
   (&key
    ((:joint __joint) "")
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _joint (string __joint))
   (setq _state __state)
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _joint
    4 (length _joint)
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint
       (write-long (length _joint) s) (princ _joint s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass nasa_r2_common_msgs::ServoResponse
  :super ros::object
  :slots (_status ))

(defmethod nasa_r2_common_msgs::ServoResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass nasa_r2_common_msgs::Servo
  :super ros::object
  :slots ())

(setf (get nasa_r2_common_msgs::Servo :md5sum-) "e20c77f9e16ee3e6c3b899e416826344")
(setf (get nasa_r2_common_msgs::Servo :datatype-) "nasa_r2_common_msgs/Servo")
(setf (get nasa_r2_common_msgs::Servo :request) nasa_r2_common_msgs::ServoRequest)
(setf (get nasa_r2_common_msgs::Servo :response) nasa_r2_common_msgs::ServoResponse)

(defmethod nasa_r2_common_msgs::ServoRequest
  (:response () (instance nasa_r2_common_msgs::ServoResponse :init)))

(setf (get nasa_r2_common_msgs::ServoRequest :md5sum-) "e20c77f9e16ee3e6c3b899e416826344")
(setf (get nasa_r2_common_msgs::ServoRequest :datatype-) "nasa_r2_common_msgs/ServoRequest")
(setf (get nasa_r2_common_msgs::ServoRequest :definition-)
      "string joint
bool state
---
int32 status

")

(setf (get nasa_r2_common_msgs::ServoResponse :md5sum-) "e20c77f9e16ee3e6c3b899e416826344")
(setf (get nasa_r2_common_msgs::ServoResponse :datatype-) "nasa_r2_common_msgs/ServoResponse")
(setf (get nasa_r2_common_msgs::ServoResponse :definition-)
      "string joint
bool state
---
int32 status

")



(provide :nasa_r2_common_msgs/Servo "e20c77f9e16ee3e6c3b899e416826344")


