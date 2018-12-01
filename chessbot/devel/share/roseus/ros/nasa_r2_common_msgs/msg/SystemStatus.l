;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::SystemStatus)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'SystemStatus (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::SYSTEMSTATUS")
  (make-package "NASA_R2_COMMON_MSGS::SYSTEMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SystemStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nasa_r2_common_msgs::SystemStatus
  :super ros::object
  :slots (_header _name _coreStats _coreTemps _oneMinuteLoad _fiveMinuteLoad _fifteenMinuteLoad _uptime _totalMemory _usedMemory _freeMemory ))

(defmethod nasa_r2_common_msgs::SystemStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:coreStats __coreStats) (let (r) (dotimes (i 0) (push (instance nasa_r2_common_msgs::SystemCore :init) r)) r))
    ((:coreTemps __coreTemps) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:oneMinuteLoad __oneMinuteLoad) 0.0)
    ((:fiveMinuteLoad __fiveMinuteLoad) 0.0)
    ((:fifteenMinuteLoad __fifteenMinuteLoad) 0.0)
    ((:uptime __uptime) (instance ros::time :init))
    ((:totalMemory __totalMemory) 0)
    ((:usedMemory __usedMemory) 0)
    ((:freeMemory __freeMemory) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _coreStats __coreStats)
   (setq _coreTemps __coreTemps)
   (setq _oneMinuteLoad (float __oneMinuteLoad))
   (setq _fiveMinuteLoad (float __fiveMinuteLoad))
   (setq _fifteenMinuteLoad (float __fifteenMinuteLoad))
   (setq _uptime __uptime)
   (setq _totalMemory (round __totalMemory))
   (setq _usedMemory (round __usedMemory))
   (setq _freeMemory (round __freeMemory))
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
  (:coreStats
   (&rest __coreStats)
   (if (keywordp (car __coreStats))
       (send* _coreStats __coreStats)
     (progn
       (if __coreStats (setq _coreStats (car __coreStats)))
       _coreStats)))
  (:coreTemps
   (&optional __coreTemps)
   (if __coreTemps (setq _coreTemps __coreTemps)) _coreTemps)
  (:oneMinuteLoad
   (&optional __oneMinuteLoad)
   (if __oneMinuteLoad (setq _oneMinuteLoad __oneMinuteLoad)) _oneMinuteLoad)
  (:fiveMinuteLoad
   (&optional __fiveMinuteLoad)
   (if __fiveMinuteLoad (setq _fiveMinuteLoad __fiveMinuteLoad)) _fiveMinuteLoad)
  (:fifteenMinuteLoad
   (&optional __fifteenMinuteLoad)
   (if __fifteenMinuteLoad (setq _fifteenMinuteLoad __fifteenMinuteLoad)) _fifteenMinuteLoad)
  (:uptime
   (&optional __uptime)
   (if __uptime (setq _uptime __uptime)) _uptime)
  (:totalMemory
   (&optional __totalMemory)
   (if __totalMemory (setq _totalMemory __totalMemory)) _totalMemory)
  (:usedMemory
   (&optional __usedMemory)
   (if __usedMemory (setq _usedMemory __usedMemory)) _usedMemory)
  (:freeMemory
   (&optional __freeMemory)
   (if __freeMemory (setq _freeMemory __freeMemory)) _freeMemory)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; nasa_r2_common_msgs/SystemCore[] _coreStats
    (apply #'+ (send-all _coreStats :serialization-length)) 4
    ;; float64[] _coreTemps
    (* 8    (length _coreTemps)) 4
    ;; float64 _oneMinuteLoad
    8
    ;; float64 _fiveMinuteLoad
    8
    ;; float64 _fifteenMinuteLoad
    8
    ;; duration _uptime
    8
    ;; uint32 _totalMemory
    4
    ;; uint32 _usedMemory
    4
    ;; uint32 _freeMemory
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; nasa_r2_common_msgs/SystemCore[] _coreStats
     (write-long (length _coreStats) s)
     (dolist (elem _coreStats)
       (send elem :serialize s)
       )
     ;; float64[] _coreTemps
     (write-long (length _coreTemps) s)
     (dotimes (i (length _coreTemps))
       (sys::poke (elt _coreTemps i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _oneMinuteLoad
       (sys::poke _oneMinuteLoad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fiveMinuteLoad
       (sys::poke _fiveMinuteLoad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fifteenMinuteLoad
       (sys::poke _fifteenMinuteLoad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; duration _uptime
       (write-long (send _uptime :sec) s) (write-long (send _uptime :nsec) s)
     ;; uint32 _totalMemory
       (write-long _totalMemory s)
     ;; uint32 _usedMemory
       (write-long _usedMemory s)
     ;; uint32 _freeMemory
       (write-long _freeMemory s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; nasa_r2_common_msgs/SystemCore[] _coreStats
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coreStats (let (r) (dotimes (i n) (push (instance nasa_r2_common_msgs::SystemCore :init) r)) r))
     (dolist (elem- _coreStats)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _coreTemps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coreTemps (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _coreTemps i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _oneMinuteLoad
     (setq _oneMinuteLoad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fiveMinuteLoad
     (setq _fiveMinuteLoad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fifteenMinuteLoad
     (setq _fifteenMinuteLoad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; duration _uptime
     (send _uptime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _uptime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _totalMemory
     (setq _totalMemory (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _usedMemory
     (setq _usedMemory (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _freeMemory
     (setq _freeMemory (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::SystemStatus :md5sum-) "4896af13a56b5d046a8dac4145b244f0")
(setf (get nasa_r2_common_msgs::SystemStatus :datatype-) "nasa_r2_common_msgs/SystemStatus")
(setf (get nasa_r2_common_msgs::SystemStatus :definition-)
      "Header              header
string              name
SystemCore[]        coreStats
float64[]           coreTemps
float64             oneMinuteLoad
float64             fiveMinuteLoad
float64             fifteenMinuteLoad
duration            uptime
uint32              totalMemory
uint32              usedMemory
uint32              freeMemory
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
MSG: nasa_r2_common_msgs/SystemCore
string       id
float64      speed
float64     load
bool        failure
")



(provide :nasa_r2_common_msgs/SystemStatus "4896af13a56b5d046a8dac4145b244f0")


