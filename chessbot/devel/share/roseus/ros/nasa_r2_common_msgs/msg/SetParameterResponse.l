;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::SetParameterResponse)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'SetParameterResponse (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::SETPARAMETERRESPONSE")
  (make-package "NASA_R2_COMMON_MSGS::SETPARAMETERRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude SetParameterResponse.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nasa_r2_common_msgs::SetParameterResponse
  :super ros::object
  :slots (_header _name _command ))

(defmethod nasa_r2_common_msgs::SetParameterResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:command __command) (instance nasa_r2_common_msgs::CommandStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _command __command)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; nasa_r2_common_msgs/CommandStatus _command
    (send _command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; nasa_r2_common_msgs/CommandStatus _command
       (send _command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; nasa_r2_common_msgs/CommandStatus _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::SetParameterResponse :md5sum-) "71d8d3ef535abb6951a4e8228fc751e1")
(setf (get nasa_r2_common_msgs::SetParameterResponse :datatype-) "nasa_r2_common_msgs/SetParameterResponse")
(setf (get nasa_r2_common_msgs::SetParameterResponse :definition-)
      "Header header
string name
CommandStatus command

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
MSG: nasa_r2_common_msgs/CommandStatus
bool success
string status

")



(provide :nasa_r2_common_msgs/SetParameterResponse "71d8d3ef535abb6951a4e8228fc751e1")


