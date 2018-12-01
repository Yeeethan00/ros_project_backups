;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::JointCommand)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'JointCommand (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::JOINTCOMMAND")
  (make-package "NASA_R2_COMMON_MSGS::JOINTCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude JointCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*FULL*" (find-package "NASA_R2_COMMON_MSGS::JOINTCOMMAND"))
(shadow '*FULL* (find-package "NASA_R2_COMMON_MSGS::JOINTCOMMAND"))
(defconstant nasa_r2_common_msgs::JointCommand::*FULL* "full")
(intern "*GRAVITY*" (find-package "NASA_R2_COMMON_MSGS::JOINTCOMMAND"))
(shadow '*GRAVITY* (find-package "NASA_R2_COMMON_MSGS::JOINTCOMMAND"))
(defconstant nasa_r2_common_msgs::JointCommand::*GRAVITY* "gravity")
(intern "*INERTIA*" (find-package "NASA_R2_COMMON_MSGS::JOINTCOMMAND"))
(shadow '*INERTIA* (find-package "NASA_R2_COMMON_MSGS::JOINTCOMMAND"))
(defconstant nasa_r2_common_msgs::JointCommand::*INERTIA* "inertia")
(intern "*NONE*" (find-package "NASA_R2_COMMON_MSGS::JOINTCOMMAND"))
(shadow '*NONE* (find-package "NASA_R2_COMMON_MSGS::JOINTCOMMAND"))
(defconstant nasa_r2_common_msgs::JointCommand::*NONE* "none")
(defclass nasa_r2_common_msgs::JointCommand
  :super ros::object
  :slots (_header _name _desiredPosition _desiredPositionVelocityLimit _feedForwardTorque _proportionalGain _derivativeGain _integralGain _positionLoopTorqueLimit _positionLoopWindupLimit _torqueLoopVelocityLimit ))

(defmethod nasa_r2_common_msgs::JointCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:desiredPosition __desiredPosition) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:desiredPositionVelocityLimit __desiredPositionVelocityLimit) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:feedForwardTorque __feedForwardTorque) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:proportionalGain __proportionalGain) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:derivativeGain __derivativeGain) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:integralGain __integralGain) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:positionLoopTorqueLimit __positionLoopTorqueLimit) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:positionLoopWindupLimit __positionLoopWindupLimit) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:torqueLoopVelocityLimit __torqueLoopVelocityLimit) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name __name)
   (setq _desiredPosition __desiredPosition)
   (setq _desiredPositionVelocityLimit __desiredPositionVelocityLimit)
   (setq _feedForwardTorque __feedForwardTorque)
   (setq _proportionalGain __proportionalGain)
   (setq _derivativeGain __derivativeGain)
   (setq _integralGain __integralGain)
   (setq _positionLoopTorqueLimit __positionLoopTorqueLimit)
   (setq _positionLoopWindupLimit __positionLoopWindupLimit)
   (setq _torqueLoopVelocityLimit __torqueLoopVelocityLimit)
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
  (:desiredPosition
   (&optional __desiredPosition)
   (if __desiredPosition (setq _desiredPosition __desiredPosition)) _desiredPosition)
  (:desiredPositionVelocityLimit
   (&optional __desiredPositionVelocityLimit)
   (if __desiredPositionVelocityLimit (setq _desiredPositionVelocityLimit __desiredPositionVelocityLimit)) _desiredPositionVelocityLimit)
  (:feedForwardTorque
   (&optional __feedForwardTorque)
   (if __feedForwardTorque (setq _feedForwardTorque __feedForwardTorque)) _feedForwardTorque)
  (:proportionalGain
   (&optional __proportionalGain)
   (if __proportionalGain (setq _proportionalGain __proportionalGain)) _proportionalGain)
  (:derivativeGain
   (&optional __derivativeGain)
   (if __derivativeGain (setq _derivativeGain __derivativeGain)) _derivativeGain)
  (:integralGain
   (&optional __integralGain)
   (if __integralGain (setq _integralGain __integralGain)) _integralGain)
  (:positionLoopTorqueLimit
   (&optional __positionLoopTorqueLimit)
   (if __positionLoopTorqueLimit (setq _positionLoopTorqueLimit __positionLoopTorqueLimit)) _positionLoopTorqueLimit)
  (:positionLoopWindupLimit
   (&optional __positionLoopWindupLimit)
   (if __positionLoopWindupLimit (setq _positionLoopWindupLimit __positionLoopWindupLimit)) _positionLoopWindupLimit)
  (:torqueLoopVelocityLimit
   (&optional __torqueLoopVelocityLimit)
   (if __torqueLoopVelocityLimit (setq _torqueLoopVelocityLimit __torqueLoopVelocityLimit)) _torqueLoopVelocityLimit)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float64[] _desiredPosition
    (* 8    (length _desiredPosition)) 4
    ;; float64[] _desiredPositionVelocityLimit
    (* 8    (length _desiredPositionVelocityLimit)) 4
    ;; float64[] _feedForwardTorque
    (* 8    (length _feedForwardTorque)) 4
    ;; float64[] _proportionalGain
    (* 8    (length _proportionalGain)) 4
    ;; float64[] _derivativeGain
    (* 8    (length _derivativeGain)) 4
    ;; float64[] _integralGain
    (* 8    (length _integralGain)) 4
    ;; float64[] _positionLoopTorqueLimit
    (* 8    (length _positionLoopTorqueLimit)) 4
    ;; float64[] _positionLoopWindupLimit
    (* 8    (length _positionLoopWindupLimit)) 4
    ;; float64[] _torqueLoopVelocityLimit
    (* 8    (length _torqueLoopVelocityLimit)) 4
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
     ;; float64[] _desiredPosition
     (write-long (length _desiredPosition) s)
     (dotimes (i (length _desiredPosition))
       (sys::poke (elt _desiredPosition i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _desiredPositionVelocityLimit
     (write-long (length _desiredPositionVelocityLimit) s)
     (dotimes (i (length _desiredPositionVelocityLimit))
       (sys::poke (elt _desiredPositionVelocityLimit i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _feedForwardTorque
     (write-long (length _feedForwardTorque) s)
     (dotimes (i (length _feedForwardTorque))
       (sys::poke (elt _feedForwardTorque i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _proportionalGain
     (write-long (length _proportionalGain) s)
     (dotimes (i (length _proportionalGain))
       (sys::poke (elt _proportionalGain i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _derivativeGain
     (write-long (length _derivativeGain) s)
     (dotimes (i (length _derivativeGain))
       (sys::poke (elt _derivativeGain i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _integralGain
     (write-long (length _integralGain) s)
     (dotimes (i (length _integralGain))
       (sys::poke (elt _integralGain i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _positionLoopTorqueLimit
     (write-long (length _positionLoopTorqueLimit) s)
     (dotimes (i (length _positionLoopTorqueLimit))
       (sys::poke (elt _positionLoopTorqueLimit i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _positionLoopWindupLimit
     (write-long (length _positionLoopWindupLimit) s)
     (dotimes (i (length _positionLoopWindupLimit))
       (sys::poke (elt _positionLoopWindupLimit i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _torqueLoopVelocityLimit
     (write-long (length _torqueLoopVelocityLimit) s)
     (dotimes (i (length _torqueLoopVelocityLimit))
       (sys::poke (elt _torqueLoopVelocityLimit i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64[] _desiredPosition
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _desiredPosition (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _desiredPosition i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _desiredPositionVelocityLimit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _desiredPositionVelocityLimit (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _desiredPositionVelocityLimit i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _feedForwardTorque
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feedForwardTorque (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _feedForwardTorque i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _proportionalGain
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _proportionalGain (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _proportionalGain i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _derivativeGain
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _derivativeGain (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _derivativeGain i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _integralGain
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _integralGain (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _integralGain i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _positionLoopTorqueLimit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positionLoopTorqueLimit (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _positionLoopTorqueLimit i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _positionLoopWindupLimit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positionLoopWindupLimit (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _positionLoopWindupLimit i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _torqueLoopVelocityLimit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _torqueLoopVelocityLimit (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _torqueLoopVelocityLimit i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::JointCommand :md5sum-) "c56e7e90d9ba9be819e9e813c2544894")
(setf (get nasa_r2_common_msgs::JointCommand :datatype-) "nasa_r2_common_msgs/JointCommand")
(setf (get nasa_r2_common_msgs::JointCommand :definition-)
      "Header header
string[] name
float64[] desiredPosition
float64[] desiredPositionVelocityLimit
float64[] feedForwardTorque
float64[] proportionalGain
float64[] derivativeGain
float64[] integralGain
float64[] positionLoopTorqueLimit
float64[] positionLoopWindupLimit
float64[] torqueLoopVelocityLimit

string FULL           =full
string GRAVITY        =gravity
string INERTIA        =inertia
string NONE           =none

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



(provide :nasa_r2_common_msgs/JointCommand "c56e7e90d9ba9be819e9e813c2544894")


