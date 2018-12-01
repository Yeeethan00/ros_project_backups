;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::JointTrajectoryReplan)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'JointTrajectoryReplan (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::JOINTTRAJECTORYREPLAN")
  (make-package "NASA_R2_COMMON_MSGS::JOINTTRAJECTORYREPLAN"))

(in-package "ROS")
;;//! \htmlinclude JointTrajectoryReplan.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass nasa_r2_common_msgs::JointTrajectoryReplan
  :super ros::object
  :slots (_header _replan _trajectory ))

(defmethod nasa_r2_common_msgs::JointTrajectoryReplan
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:replan __replan) (let (r) (dotimes (i 0) (push (instance nasa_r2_common_msgs::ReplanType :init) r)) r))
    ((:trajectory __trajectory) (instance trajectory_msgs::JointTrajectory :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _replan __replan)
   (setq _trajectory __trajectory)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:replan
   (&rest __replan)
   (if (keywordp (car __replan))
       (send* _replan __replan)
     (progn
       (if __replan (setq _replan (car __replan)))
       _replan)))
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nasa_r2_common_msgs/ReplanType[] _replan
    (apply #'+ (send-all _replan :serialization-length)) 4
    ;; trajectory_msgs/JointTrajectory _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nasa_r2_common_msgs/ReplanType[] _replan
     (write-long (length _replan) s)
     (dolist (elem _replan)
       (send elem :serialize s)
       )
     ;; trajectory_msgs/JointTrajectory _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nasa_r2_common_msgs/ReplanType[] _replan
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _replan (let (r) (dotimes (i n) (push (instance nasa_r2_common_msgs::ReplanType :init) r)) r))
     (dolist (elem- _replan)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; trajectory_msgs/JointTrajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::JointTrajectoryReplan :md5sum-) "282383b42345996d1c9b14b7391111c8")
(setf (get nasa_r2_common_msgs::JointTrajectoryReplan :datatype-) "nasa_r2_common_msgs/JointTrajectoryReplan")
(setf (get nasa_r2_common_msgs::JointTrajectoryReplan :definition-)
      "Header header
ReplanType[] replan
trajectory_msgs/JointTrajectory trajectory

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
MSG: nasa_r2_common_msgs/ReplanType
uint8 type

uint8 NONE = 0
uint8 SOFT = 1
uint8 HARD = 2
uint8 STOP = 3
uint8 PAUSE = 4
uint8 CONTINUE = 5

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points
================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

")



(provide :nasa_r2_common_msgs/JointTrajectoryReplan "282383b42345996d1c9b14b7391111c8")


