;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::JointControlDataArray)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'JointControlDataArray (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLDATAARRAY")
  (make-package "NASA_R2_COMMON_MSGS::JOINTCONTROLDATAARRAY"))

(in-package "ROS")
;;//! \htmlinclude JointControlDataArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nasa_r2_common_msgs::JointControlDataArray
  :super ros::object
  :slots (_header _joint _data ))

(defmethod nasa_r2_common_msgs::JointControlDataArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:joint __joint) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:data __data) (let (r) (dotimes (i 0) (push (instance nasa_r2_common_msgs::JointControlData :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _joint __joint)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _joint
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint)) 4
    ;; nasa_r2_common_msgs/JointControlData[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _joint
     (write-long (length _joint) s)
     (dolist (elem _joint)
       (write-long (length elem) s) (princ elem s)
       )
     ;; nasa_r2_common_msgs/JointControlData[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _joint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; nasa_r2_common_msgs/JointControlData[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance nasa_r2_common_msgs::JointControlData :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::JointControlDataArray :md5sum-) "96b9d2bc74ad5b1c503caf2252599837")
(setf (get nasa_r2_common_msgs::JointControlDataArray :datatype-) "nasa_r2_common_msgs/JointControlDataArray")
(setf (get nasa_r2_common_msgs::JointControlDataArray :definition-)
      "Header header
string[] joint
JointControlData[] data

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
MSG: nasa_r2_common_msgs/JointControlData
JointControlMode            controlMode
JointControlCommandMode     commandMode
JointControlCalibrationMode calibrationMode
JointControlClearFaultMode  clearFaultMode
JointControlCoeffState      coeffState

================================================================================
MSG: nasa_r2_common_msgs/JointControlMode
uint8 state
uint8 IGNORE     = 0
uint8 INVALID    = 1
uint8 BOOTLOADER = 2
uint8 FAULTED    = 3
uint8 SAFE       = 4
uint8 OFF        = 5
uint8 PARK       = 6
uint8 NEUTRAL    = 7
uint8 DRIVE      = 8

================================================================================
MSG: nasa_r2_common_msgs/JointControlCommandMode
uint8 state
uint8 IGNORE          = 0
uint8 INVALID         = 1
uint8 MOTCOM          = 2
uint8 MULTILOOPSTEP   = 3
uint8 MULTILOOPSMOOTH = 4
uint8 ACTUATOR        = 5
uint8 STALLMODE       = 6

================================================================================
MSG: nasa_r2_common_msgs/JointControlCalibrationMode
uint8 state
uint8 IGNORE       = 0
uint8 DISABLE      = 1
uint8 ENABLE       = 2
uint8 UNCALIBRATED = 3

================================================================================
MSG: nasa_r2_common_msgs/JointControlClearFaultMode
uint8 state
uint8 IGNORE  = 0
uint8 DISABLE = 1
uint8 ENABLE  = 2

================================================================================
MSG: nasa_r2_common_msgs/JointControlCoeffState
uint8 state
uint8 NOTLOADED = 0
uint8 LOADED    = 1

")



(provide :nasa_r2_common_msgs/JointControlDataArray "96b9d2bc74ad5b1c503caf2252599837")


