;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::PoseCommand)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'PoseCommand (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::POSECOMMAND")
  (make-package "NASA_R2_COMMON_MSGS::POSECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude PoseCommand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass nasa_r2_common_msgs::PoseCommand
  :super ros::object
  :slots (_commandId _refFrame _pose _baseFrame _toolFrame ))

(defmethod nasa_r2_common_msgs::PoseCommand
  (:init
   (&key
    ((:commandId __commandId) "")
    ((:refFrame __refFrame) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:baseFrame __baseFrame) "")
    ((:toolFrame __toolFrame) "")
    )
   (send-super :init)
   (setq _commandId (string __commandId))
   (setq _refFrame (string __refFrame))
   (setq _pose __pose)
   (setq _baseFrame (string __baseFrame))
   (setq _toolFrame (string __toolFrame))
   self)
  (:commandId
   (&optional __commandId)
   (if __commandId (setq _commandId __commandId)) _commandId)
  (:refFrame
   (&optional __refFrame)
   (if __refFrame (setq _refFrame __refFrame)) _refFrame)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:baseFrame
   (&optional __baseFrame)
   (if __baseFrame (setq _baseFrame __baseFrame)) _baseFrame)
  (:toolFrame
   (&optional __toolFrame)
   (if __toolFrame (setq _toolFrame __toolFrame)) _toolFrame)
  (:serialization-length
   ()
   (+
    ;; string _commandId
    4 (length _commandId)
    ;; string _refFrame
    4 (length _refFrame)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; string _baseFrame
    4 (length _baseFrame)
    ;; string _toolFrame
    4 (length _toolFrame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _commandId
       (write-long (length _commandId) s) (princ _commandId s)
     ;; string _refFrame
       (write-long (length _refFrame) s) (princ _refFrame s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; string _baseFrame
       (write-long (length _baseFrame) s) (princ _baseFrame s)
     ;; string _toolFrame
       (write-long (length _toolFrame) s) (princ _toolFrame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _commandId
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _commandId (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _refFrame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _refFrame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _baseFrame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _baseFrame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _toolFrame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _toolFrame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::PoseCommand :md5sum-) "325108abdcbe78370664839c919cbaa8")
(setf (get nasa_r2_common_msgs::PoseCommand :datatype-) "nasa_r2_common_msgs/PoseCommand")
(setf (get nasa_r2_common_msgs::PoseCommand :definition-)
      "# A Pose with reference coordinate frame, chain definition, and command_id
string commandId
string refFrame
geometry_msgs/Pose pose
string baseFrame
string toolFrame


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

")



(provide :nasa_r2_common_msgs/PoseCommand "325108abdcbe78370664839c919cbaa8")


