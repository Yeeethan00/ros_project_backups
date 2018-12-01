;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::ParseTableScene)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'ParseTableScene (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::PARSETABLESCENE")
  (make-package "NASA_R2_COMMON_MSGS::PARSETABLESCENE"))
(unless (find-package "NASA_R2_COMMON_MSGS::PARSETABLESCENEREQUEST")
  (make-package "NASA_R2_COMMON_MSGS::PARSETABLESCENEREQUEST"))
(unless (find-package "NASA_R2_COMMON_MSGS::PARSETABLESCENERESPONSE")
  (make-package "NASA_R2_COMMON_MSGS::PARSETABLESCENERESPONSE"))

(in-package "ROS")



(if (not (find-package "VISUALIZATION_MSGS"))
  (ros::roseus-add-msgs "visualization_msgs"))


(defclass nasa_r2_common_msgs::ParseTableSceneRequest
  :super ros::object
  :slots (_cmd ))

(defmethod nasa_r2_common_msgs::ParseTableSceneRequest
  (:init
   (&key
    ((:cmd __cmd) nil)
    )
   (send-super :init)
   (setq _cmd __cmd)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; bool _cmd
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _cmd
       (if _cmd (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _cmd
     (setq _cmd (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass nasa_r2_common_msgs::ParseTableSceneResponse
  :super ros::object
  :slots (_table_found _markers ))

(defmethod nasa_r2_common_msgs::ParseTableSceneResponse
  (:init
   (&key
    ((:table_found __table_found) nil)
    ((:markers __markers) (instance visualization_msgs::MarkerArray :init))
    )
   (send-super :init)
   (setq _table_found __table_found)
   (setq _markers __markers)
   self)
  (:table_found
   (&optional __table_found)
   (if __table_found (setq _table_found __table_found)) _table_found)
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:serialization-length
   ()
   (+
    ;; bool _table_found
    1
    ;; visualization_msgs/MarkerArray _markers
    (send _markers :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _table_found
       (if _table_found (write-byte -1 s) (write-byte 0 s))
     ;; visualization_msgs/MarkerArray _markers
       (send _markers :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _table_found
     (setq _table_found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; visualization_msgs/MarkerArray _markers
     (send _markers :deserialize buf ptr-) (incf ptr- (send _markers :serialization-length))
   ;;
   self)
  )

(defclass nasa_r2_common_msgs::ParseTableScene
  :super ros::object
  :slots ())

(setf (get nasa_r2_common_msgs::ParseTableScene :md5sum-) "077c5efd1df70c6ee9e651d32d6b0351")
(setf (get nasa_r2_common_msgs::ParseTableScene :datatype-) "nasa_r2_common_msgs/ParseTableScene")
(setf (get nasa_r2_common_msgs::ParseTableScene :request) nasa_r2_common_msgs::ParseTableSceneRequest)
(setf (get nasa_r2_common_msgs::ParseTableScene :response) nasa_r2_common_msgs::ParseTableSceneResponse)

(defmethod nasa_r2_common_msgs::ParseTableSceneRequest
  (:response () (instance nasa_r2_common_msgs::ParseTableSceneResponse :init)))

(setf (get nasa_r2_common_msgs::ParseTableSceneRequest :md5sum-) "077c5efd1df70c6ee9e651d32d6b0351")
(setf (get nasa_r2_common_msgs::ParseTableSceneRequest :datatype-) "nasa_r2_common_msgs/ParseTableSceneRequest")
(setf (get nasa_r2_common_msgs::ParseTableSceneRequest :definition-)
      "bool cmd
---
bool table_found
visualization_msgs/MarkerArray markers


================================================================================
MSG: visualization_msgs/MarkerArray
Marker[] markers

================================================================================
MSG: visualization_msgs/Marker
# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz

uint8 ARROW=0
uint8 CUBE=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 LINE_STRIP=4
uint8 LINE_LIST=5
uint8 CUBE_LIST=6
uint8 SPHERE_LIST=7
uint8 POINTS=8
uint8 TEXT_VIEW_FACING=9
uint8 MESH_RESOURCE=10
uint8 TRIANGLE_LIST=11

uint8 ADD=0
uint8 MODIFY=0
uint8 DELETE=2
uint8 DELETEALL=3

Header header                        # header for time/frame information
string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object
int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later
int32 type 		                       # Type of object
int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects
geometry_msgs/Pose pose                 # Pose of the object
geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)
std_msgs/ColorRGBA color             # Color [0.0-1.0]
duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever
bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep

#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
geometry_msgs/Point[] points
#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
#number of colors must either be 0 or equal to the number of points
#NOTE: alpha is not yet used
std_msgs/ColorRGBA[] colors

# NOTE: only used for text markers
string text

# NOTE: only used for MESH_RESOURCE markers
string mesh_resource
bool mesh_use_embedded_materials

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
================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
")

(setf (get nasa_r2_common_msgs::ParseTableSceneResponse :md5sum-) "077c5efd1df70c6ee9e651d32d6b0351")
(setf (get nasa_r2_common_msgs::ParseTableSceneResponse :datatype-) "nasa_r2_common_msgs/ParseTableSceneResponse")
(setf (get nasa_r2_common_msgs::ParseTableSceneResponse :definition-)
      "bool cmd
---
bool table_found
visualization_msgs/MarkerArray markers


================================================================================
MSG: visualization_msgs/MarkerArray
Marker[] markers

================================================================================
MSG: visualization_msgs/Marker
# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz

uint8 ARROW=0
uint8 CUBE=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 LINE_STRIP=4
uint8 LINE_LIST=5
uint8 CUBE_LIST=6
uint8 SPHERE_LIST=7
uint8 POINTS=8
uint8 TEXT_VIEW_FACING=9
uint8 MESH_RESOURCE=10
uint8 TRIANGLE_LIST=11

uint8 ADD=0
uint8 MODIFY=0
uint8 DELETE=2
uint8 DELETEALL=3

Header header                        # header for time/frame information
string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object
int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later
int32 type 		                       # Type of object
int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects
geometry_msgs/Pose pose                 # Pose of the object
geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)
std_msgs/ColorRGBA color             # Color [0.0-1.0]
duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever
bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep

#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
geometry_msgs/Point[] points
#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
#number of colors must either be 0 or equal to the number of points
#NOTE: alpha is not yet used
std_msgs/ColorRGBA[] colors

# NOTE: only used for text markers
string text

# NOTE: only used for MESH_RESOURCE markers
string mesh_resource
bool mesh_use_embedded_materials

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
================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
")



(provide :nasa_r2_common_msgs/ParseTableScene "077c5efd1df70c6ee9e651d32d6b0351")


