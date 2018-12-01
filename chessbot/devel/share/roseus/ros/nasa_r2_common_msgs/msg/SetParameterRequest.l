;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::SetParameterRequest)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'SetParameterRequest (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::SETPARAMETERREQUEST")
  (make-package "NASA_R2_COMMON_MSGS::SETPARAMETERREQUEST"))

(in-package "ROS")
;;//! \htmlinclude SetParameterRequest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nasa_r2_common_msgs::SetParameterRequest
  :super ros::object
  :slots (_header _param ))

(defmethod nasa_r2_common_msgs::SetParameterRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:param __param) (instance nasa_r2_common_msgs::Parameter :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _param __param)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:param
   (&rest __param)
   (if (keywordp (car __param))
       (send* _param __param)
     (progn
       (if __param (setq _param (car __param)))
       _param)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nasa_r2_common_msgs/Parameter _param
    (send _param :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nasa_r2_common_msgs/Parameter _param
       (send _param :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nasa_r2_common_msgs/Parameter _param
     (send _param :deserialize buf ptr-) (incf ptr- (send _param :serialization-length))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::SetParameterRequest :md5sum-) "4c20cb3132d88e7123922dd820162194")
(setf (get nasa_r2_common_msgs::SetParameterRequest :datatype-) "nasa_r2_common_msgs/SetParameterRequest")
(setf (get nasa_r2_common_msgs::SetParameterRequest :definition-)
      "Header header
Parameter param

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: nasa_r2_common_msgs/Parameter
uint8 STRING  = 0
uint8 INT     = 1
uint8 FLOAT   = 2
uint8 BOOL    = 3
uint8 LIST    = 4
uint8 DICT    = 5

string          key
uint8           type
string          value

")



(provide :nasa_r2_common_msgs/SetParameterRequest "4c20cb3132d88e7123922dd820162194")


