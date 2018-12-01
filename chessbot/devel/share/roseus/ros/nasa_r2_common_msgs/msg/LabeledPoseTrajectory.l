;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::LabeledPoseTrajectory)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'LabeledPoseTrajectory (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::LABELEDPOSETRAJECTORY")
  (make-package "NASA_R2_COMMON_MSGS::LABELEDPOSETRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude LabeledPoseTrajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nasa_r2_common_msgs::LabeledPoseTrajectory
  :super ros::object
  :slots (_header _originator _nodes _node_priorities _refFrames _points ))

(defmethod nasa_r2_common_msgs::LabeledPoseTrajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:originator __originator) "")
    ((:nodes __nodes) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:node_priorities __node_priorities) (let (r) (dotimes (i 0) (push (instance nasa_r2_common_msgs::PriorityArray :init) r)) r))
    ((:refFrames __refFrames) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:points __points) (let (r) (dotimes (i 0) (push (instance nasa_r2_common_msgs::PoseTrajectoryPoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _originator (string __originator))
   (setq _nodes __nodes)
   (setq _node_priorities __node_priorities)
   (setq _refFrames __refFrames)
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:originator
   (&optional __originator)
   (if __originator (setq _originator __originator)) _originator)
  (:nodes
   (&optional __nodes)
   (if __nodes (setq _nodes __nodes)) _nodes)
  (:node_priorities
   (&rest __node_priorities)
   (if (keywordp (car __node_priorities))
       (send* _node_priorities __node_priorities)
     (progn
       (if __node_priorities (setq _node_priorities (car __node_priorities)))
       _node_priorities)))
  (:refFrames
   (&optional __refFrames)
   (if __refFrames (setq _refFrames __refFrames)) _refFrames)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _originator
    4 (length _originator)
    ;; string[] _nodes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _nodes)) 4
    ;; nasa_r2_common_msgs/PriorityArray[] _node_priorities
    (apply #'+ (send-all _node_priorities :serialization-length)) 4
    ;; string[] _refFrames
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _refFrames)) 4
    ;; nasa_r2_common_msgs/PoseTrajectoryPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _originator
       (write-long (length _originator) s) (princ _originator s)
     ;; string[] _nodes
     (write-long (length _nodes) s)
     (dolist (elem _nodes)
       (write-long (length elem) s) (princ elem s)
       )
     ;; nasa_r2_common_msgs/PriorityArray[] _node_priorities
     (write-long (length _node_priorities) s)
     (dolist (elem _node_priorities)
       (send elem :serialize s)
       )
     ;; string[] _refFrames
     (write-long (length _refFrames) s)
     (dolist (elem _refFrames)
       (write-long (length elem) s) (princ elem s)
       )
     ;; nasa_r2_common_msgs/PoseTrajectoryPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _originator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _originator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nodes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _nodes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; nasa_r2_common_msgs/PriorityArray[] _node_priorities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_priorities (let (r) (dotimes (i n) (push (instance nasa_r2_common_msgs::PriorityArray :init) r)) r))
     (dolist (elem- _node_priorities)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _refFrames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _refFrames (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _refFrames i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; nasa_r2_common_msgs/PoseTrajectoryPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance nasa_r2_common_msgs::PoseTrajectoryPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::LabeledPoseTrajectory :md5sum-) "6859ade925296749b6e37b0f7d35911a")
(setf (get nasa_r2_common_msgs::LabeledPoseTrajectory :datatype-) "nasa_r2_common_msgs/LabeledPoseTrajectory")
(setf (get nasa_r2_common_msgs::LabeledPoseTrajectory :definition-)
      "Header header
string originator
# length of nodes must match length of poses in each point
string[] nodes
# priorities must have nodes length or be omitted which defaults all to HIGH
PriorityArray[]  node_priorities
# refFrames must either have one item or be nodes length
string[] refFrames
PoseTrajectoryPoint[] points


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



(provide :nasa_r2_common_msgs/LabeledPoseTrajectory "6859ade925296749b6e37b0f7d35911a")


