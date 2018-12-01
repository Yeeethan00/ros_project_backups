;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::VariantMapArray)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'VariantMapArray (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::VARIANTMAPARRAY")
  (make-package "NASA_R2_COMMON_MSGS::VARIANTMAPARRAY"))

(in-package "ROS")
;;//! \htmlinclude VariantMapArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nasa_r2_common_msgs::VariantMapArray
  :super ros::object
  :slots (_header _map ))

(defmethod nasa_r2_common_msgs::VariantMapArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:map __map) (let (r) (dotimes (i 0) (push (instance nasa_r2_common_msgs::VariantMap :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _map __map)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nasa_r2_common_msgs/VariantMap[] _map
    (apply #'+ (send-all _map :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nasa_r2_common_msgs/VariantMap[] _map
     (write-long (length _map) s)
     (dolist (elem _map)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nasa_r2_common_msgs/VariantMap[] _map
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map (let (r) (dotimes (i n) (push (instance nasa_r2_common_msgs::VariantMap :init) r)) r))
     (dolist (elem- _map)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::VariantMapArray :md5sum-) "81c5b31cbd0a1ce333af5ea67766c271")
(setf (get nasa_r2_common_msgs::VariantMapArray :datatype-) "nasa_r2_common_msgs/VariantMapArray")
(setf (get nasa_r2_common_msgs::VariantMapArray :definition-)
      "Header       header
VariantMap[] map

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
MSG: nasa_r2_common_msgs/VariantMap
string      name
string      message
ValueType[] value
string[]    stringMap
uint16[]    uint16Map
int16[]     int16Map
uint32[]    uint32Map
int32[]     int32Map
float32[]   float32Map
bool[]      boolMap

================================================================================
MSG: nasa_r2_common_msgs/ValueType
string     key
MappedType type
uint32     index

================================================================================
MSG: nasa_r2_common_msgs/MappedType
uint8 STRING  = 0
uint8 UINT16  = 1
uint8 INT16   = 2
uint8 UINT32  = 3
uint8 INT32   = 4
uint8 FLOAT32 = 5
uint8 BOOL    = 6

uint8 type

")



(provide :nasa_r2_common_msgs/VariantMapArray "81c5b31cbd0a1ce333af5ea67766c271")


