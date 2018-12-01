;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::PoseTrajectoryReplan)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'PoseTrajectoryReplan (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::POSETRAJECTORYREPLAN")
  (make-package "NASA_R2_COMMON_MSGS::POSETRAJECTORYREPLAN"))

(in-package "ROS")
;;//! \htmlinclude PoseTrajectoryReplan.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nasa_r2_common_msgs::PoseTrajectoryReplan
  :super ros::object
  :slots (_header _replan _trajectory ))

(defmethod nasa_r2_common_msgs::PoseTrajectoryReplan
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:replan __replan) (instance nasa_r2_common_msgs::ReplanType :init))
    ((:trajectory __trajectory) (instance nasa_r2_common_msgs::PoseTrajectory :init))
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
    ;; nasa_r2_common_msgs/ReplanType _replan
    (send _replan :serialization-length)
    ;; nasa_r2_common_msgs/PoseTrajectory _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nasa_r2_common_msgs/ReplanType _replan
       (send _replan :serialize s)
     ;; nasa_r2_common_msgs/PoseTrajectory _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nasa_r2_common_msgs/ReplanType _replan
     (send _replan :deserialize buf ptr-) (incf ptr- (send _replan :serialization-length))
   ;; nasa_r2_common_msgs/PoseTrajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::PoseTrajectoryReplan :md5sum-) "2c451df74f58d0f7ac206299290fa0f9")
(setf (get nasa_r2_common_msgs::PoseTrajectoryReplan :datatype-) "nasa_r2_common_msgs/PoseTrajectoryReplan")
(setf (get nasa_r2_common_msgs::PoseTrajectoryReplan :definition-)
      "Header header
ReplanType replan
PoseTrajectory trajectory

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
MSG: nasa_r2_common_msgs/PoseTrajectory
Header header
# length of nodes must match length of poses in each point
string[] nodes
# priorities must have nodes length or be omitted which defaults all to HIGH
PriorityArray[]  node_priorities
# refFrames must either have one item or be nodes length
string[] refFrames
PoseTrajectoryPoint[] points


================================================================================
MSG: nasa_r2_common_msgs/PriorityArray
# axis_priorities must be 0, 1, or 6 elements
# empty defaults to high, 1 sets all axes equal priority, 6 sets each axis (x, y, z, r, p, y)
uint8[]  axis_priorities

uint8 IGNORE          = 0   # Exclude from trajectory
uint8 CRITICAL        = 1   # Most important priority in trajectory
uint8 HIGH            = 2   # Second most important priority in trajectory
uint8 MEDIUM          = 3   # Medium prioirty in trajectory
uint8 LOW             = 4   # Low priority in trajectory
uint8 OPT             = 5   # Optimize trajectory (solve for, but do not iterate to achieve)

#uint8 IGNORE = 0
#uint8 LOW = 1
#uint8 MEDIUM = 128
#uint8 HIGH = 254
#uint8 CRITICAL = 255

================================================================================
MSG: nasa_r2_common_msgs/PoseTrajectoryPoint
# currently, position only but could add velocity and acceleration later
geometry_msgs/Pose[] positions
geometry_msgs/Twist[] velocities
geometry_msgs/Twist[] accelerations
duration time_from_start

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :nasa_r2_common_msgs/PoseTrajectoryReplan "2c451df74f58d0f7ac206299290fa0f9")


