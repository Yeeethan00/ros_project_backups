;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::ForceControlAxisArray)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'ForceControlAxisArray (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXISARRAY")
  (make-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXISARRAY"))

(in-package "ROS")
;;//! \htmlinclude ForceControlAxisArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nasa_r2_common_msgs::ForceControlAxisArray
  :super ros::object
  :slots (_header _nodes _axes ))

(defmethod nasa_r2_common_msgs::ForceControlAxisArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:nodes __nodes) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:axes __axes) (let (r) (dotimes (i 0) (push (instance nasa_r2_common_msgs::ForceControlAxis :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _nodes __nodes)
   (setq _axes __axes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:nodes
   (&optional __nodes)
   (if __nodes (setq _nodes __nodes)) _nodes)
  (:axes
   (&rest __axes)
   (if (keywordp (car __axes))
       (send* _axes __axes)
     (progn
       (if __axes (setq _axes (car __axes)))
       _axes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _nodes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _nodes)) 4
    ;; nasa_r2_common_msgs/ForceControlAxis[] _axes
    (apply #'+ (send-all _axes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _nodes
     (write-long (length _nodes) s)
     (dolist (elem _nodes)
       (write-long (length elem) s) (princ elem s)
       )
     ;; nasa_r2_common_msgs/ForceControlAxis[] _axes
     (write-long (length _axes) s)
     (dolist (elem _axes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nodes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _nodes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; nasa_r2_common_msgs/ForceControlAxis[] _axes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _axes (let (r) (dotimes (i n) (push (instance nasa_r2_common_msgs::ForceControlAxis :init) r)) r))
     (dolist (elem- _axes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::ForceControlAxisArray :md5sum-) "f9bcafba0fd121ec03cb25f3c5a8b045")
(setf (get nasa_r2_common_msgs::ForceControlAxisArray :datatype-) "nasa_r2_common_msgs/ForceControlAxisArray")
(setf (get nasa_r2_common_msgs::ForceControlAxisArray :definition-)
      "Header header
string[] nodes
ForceControlAxis[] axes

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
MSG: nasa_r2_common_msgs/ForceControlAxis
uint8[] axis
float32[] magnitude

uint8 X       = 0
uint8 Y       = 1
uint8 Z       = 2
uint8 ROLL    = 3
uint8 PITCH   = 4
uint8 YAW     = 5

")



(provide :nasa_r2_common_msgs/ForceControlAxisArray "f9bcafba0fd121ec03cb25f3c5a8b045")


