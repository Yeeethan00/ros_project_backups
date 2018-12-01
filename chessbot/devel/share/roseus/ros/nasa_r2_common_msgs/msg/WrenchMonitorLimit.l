;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::WrenchMonitorLimit)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'WrenchMonitorLimit (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::WRENCHMONITORLIMIT")
  (make-package "NASA_R2_COMMON_MSGS::WRENCHMONITORLIMIT"))

(in-package "ROS")
;;//! \htmlinclude WrenchMonitorLimit.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nasa_r2_common_msgs::WrenchMonitorLimit
  :super ros::object
  :slots (_header _name _force _torque _isFraction ))

(defmethod nasa_r2_common_msgs::WrenchMonitorLimit
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:force __force) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:torque __torque) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:isFraction __isFraction) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name __name)
   (setq _force __force)
   (setq _torque __torque)
   (setq _isFraction __isFraction)
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
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:isFraction
   (&optional __isFraction)
   (if __isFraction (setq _isFraction __isFraction)) _isFraction)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float64[] _force
    (* 8    (length _force)) 4
    ;; float64[] _torque
    (* 8    (length _torque)) 4
    ;; bool[] _isFraction
    (* 1    (length _isFraction)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _force
     (write-long (length _force) s)
     (dotimes (i (length _force))
       (sys::poke (elt _force i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _torque
     (write-long (length _torque) s)
     (dotimes (i (length _torque))
       (sys::poke (elt _torque i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool[] _isFraction
     (write-long (length _isFraction) s)
     (dotimes (i (length _isFraction))
       (if (elt _isFraction i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _force
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _force (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _force i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _torque
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _torque (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _torque i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool[] _isFraction
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _isFraction (make-list n))
     (dotimes (i n)
     (setf (elt _isFraction i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::WrenchMonitorLimit :md5sum-) "4535825230d82d19f739062cbc5d17ed")
(setf (get nasa_r2_common_msgs::WrenchMonitorLimit :datatype-) "nasa_r2_common_msgs/WrenchMonitorLimit")
(setf (get nasa_r2_common_msgs::WrenchMonitorLimit :definition-)
      "Header header
string[] name
float64[] force
float64[] torque
bool[] isFraction

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

")



(provide :nasa_r2_common_msgs/WrenchMonitorLimit "4535825230d82d19f739062cbc5d17ed")


