;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::Power)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'Power (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::POWER")
  (make-package "NASA_R2_COMMON_MSGS::POWER"))
(unless (find-package "NASA_R2_COMMON_MSGS::POWERREQUEST")
  (make-package "NASA_R2_COMMON_MSGS::POWERREQUEST"))
(unless (find-package "NASA_R2_COMMON_MSGS::POWERRESPONSE")
  (make-package "NASA_R2_COMMON_MSGS::POWERRESPONSE"))

(in-package "ROS")





(defclass nasa_r2_common_msgs::PowerRequest
  :super ros::object
  :slots (_channel _state ))

(defmethod nasa_r2_common_msgs::PowerRequest
  (:init
   (&key
    ((:channel __channel) "")
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _channel (string __channel))
   (setq _state __state)
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _channel
    4 (length _channel)
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _channel
       (write-long (length _channel) s) (princ _channel s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _channel
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _channel (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass nasa_r2_common_msgs::PowerResponse
  :super ros::object
  :slots (_status ))

(defmethod nasa_r2_common_msgs::PowerResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass nasa_r2_common_msgs::Power
  :super ros::object
  :slots ())

(setf (get nasa_r2_common_msgs::Power :md5sum-) "8ab79e1aeae0eefc42684aa6a50ac610")
(setf (get nasa_r2_common_msgs::Power :datatype-) "nasa_r2_common_msgs/Power")
(setf (get nasa_r2_common_msgs::Power :request) nasa_r2_common_msgs::PowerRequest)
(setf (get nasa_r2_common_msgs::Power :response) nasa_r2_common_msgs::PowerResponse)

(defmethod nasa_r2_common_msgs::PowerRequest
  (:response () (instance nasa_r2_common_msgs::PowerResponse :init)))

(setf (get nasa_r2_common_msgs::PowerRequest :md5sum-) "8ab79e1aeae0eefc42684aa6a50ac610")
(setf (get nasa_r2_common_msgs::PowerRequest :datatype-) "nasa_r2_common_msgs/PowerRequest")
(setf (get nasa_r2_common_msgs::PowerRequest :definition-)
      "string channel
bool state
---
bool status

")

(setf (get nasa_r2_common_msgs::PowerResponse :md5sum-) "8ab79e1aeae0eefc42684aa6a50ac610")
(setf (get nasa_r2_common_msgs::PowerResponse :datatype-) "nasa_r2_common_msgs/PowerResponse")
(setf (get nasa_r2_common_msgs::PowerResponse :definition-)
      "string channel
bool state
---
bool status

")



(provide :nasa_r2_common_msgs/Power "8ab79e1aeae0eefc42684aa6a50ac610")


