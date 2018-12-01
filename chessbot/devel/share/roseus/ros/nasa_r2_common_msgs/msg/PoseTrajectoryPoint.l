;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::PoseTrajectoryPoint)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'PoseTrajectoryPoint (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::POSETRAJECTORYPOINT")
  (make-package "NASA_R2_COMMON_MSGS::POSETRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude PoseTrajectoryPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass nasa_r2_common_msgs::PoseTrajectoryPoint
  :super ros::object
  :slots (_positions _velocities _accelerations _time_from_start ))

(defmethod nasa_r2_common_msgs::PoseTrajectoryPoint
  (:init
   (&key
    ((:positions __positions) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:velocities __velocities) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Twist :init) r)) r))
    ((:accelerations __accelerations) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Twist :init) r)) r))
    ((:time_from_start __time_from_start) (instance ros::time :init))
    )
   (send-super :init)
   (setq _positions __positions)
   (setq _velocities __velocities)
   (setq _accelerations __accelerations)
   (setq _time_from_start __time_from_start)
   self)
  (:positions
   (&rest __positions)
   (if (keywordp (car __positions))
       (send* _positions __positions)
     (progn
       (if __positions (setq _positions (car __positions)))
       _positions)))
  (:velocities
   (&rest __velocities)
   (if (keywordp (car __velocities))
       (send* _velocities __velocities)
     (progn
       (if __velocities (setq _velocities (car __velocities)))
       _velocities)))
  (:accelerations
   (&rest __accelerations)
   (if (keywordp (car __accelerations))
       (send* _accelerations __accelerations)
     (progn
       (if __accelerations (setq _accelerations (car __accelerations)))
       _accelerations)))
  (:time_from_start
   (&optional __time_from_start)
   (if __time_from_start (setq _time_from_start __time_from_start)) _time_from_start)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose[] _positions
    (apply #'+ (send-all _positions :serialization-length)) 4
    ;; geometry_msgs/Twist[] _velocities
    (apply #'+ (send-all _velocities :serialization-length)) 4
    ;; geometry_msgs/Twist[] _accelerations
    (apply #'+ (send-all _accelerations :serialization-length)) 4
    ;; duration _time_from_start
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose[] _positions
     (write-long (length _positions) s)
     (dolist (elem _positions)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Twist[] _velocities
     (write-long (length _velocities) s)
     (dolist (elem _velocities)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Twist[] _accelerations
     (write-long (length _accelerations) s)
     (dolist (elem _accelerations)
       (send elem :serialize s)
       )
     ;; duration _time_from_start
       (write-long (send _time_from_start :sec) s) (write-long (send _time_from_start :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Twist[] _velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocities (let (r) (dotimes (i n) (push (instance geometry_msgs::Twist :init) r)) r))
     (dolist (elem- _velocities)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Twist[] _accelerations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _accelerations (let (r) (dotimes (i n) (push (instance geometry_msgs::Twist :init) r)) r))
     (dolist (elem- _accelerations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; duration _time_from_start
     (send _time_from_start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_from_start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::PoseTrajectoryPoint :md5sum-) "29009f42fa3cbc3a6154994f31b2db03")
(setf (get nasa_r2_common_msgs::PoseTrajectoryPoint :datatype-) "nasa_r2_common_msgs/PoseTrajectoryPoint")
(setf (get nasa_r2_common_msgs::PoseTrajectoryPoint :definition-)
      "# currently, position only but could add velocity and acceleration later
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



(provide :nasa_r2_common_msgs/PoseTrajectoryPoint "29009f42fa3cbc3a6154994f31b2db03")


