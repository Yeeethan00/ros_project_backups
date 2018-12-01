;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::PriorityArray)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'PriorityArray (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::PRIORITYARRAY")
  (make-package "NASA_R2_COMMON_MSGS::PRIORITYARRAY"))

(in-package "ROS")
;;//! \htmlinclude PriorityArray.msg.html


(intern "*IGNORE*" (find-package "NASA_R2_COMMON_MSGS::PRIORITYARRAY"))
(shadow '*IGNORE* (find-package "NASA_R2_COMMON_MSGS::PRIORITYARRAY"))
(defconstant nasa_r2_common_msgs::PriorityArray::*IGNORE* 0)
(intern "*CRITICAL*" (find-package "NASA_R2_COMMON_MSGS::PRIORITYARRAY"))
(shadow '*CRITICAL* (find-package "NASA_R2_COMMON_MSGS::PRIORITYARRAY"))
(defconstant nasa_r2_common_msgs::PriorityArray::*CRITICAL* 1)
(intern "*HIGH*" (find-package "NASA_R2_COMMON_MSGS::PRIORITYARRAY"))
(shadow '*HIGH* (find-package "NASA_R2_COMMON_MSGS::PRIORITYARRAY"))
(defconstant nasa_r2_common_msgs::PriorityArray::*HIGH* 2)
(intern "*MEDIUM*" (find-package "NASA_R2_COMMON_MSGS::PRIORITYARRAY"))
(shadow '*MEDIUM* (find-package "NASA_R2_COMMON_MSGS::PRIORITYARRAY"))
(defconstant nasa_r2_common_msgs::PriorityArray::*MEDIUM* 3)
(intern "*LOW*" (find-package "NASA_R2_COMMON_MSGS::PRIORITYARRAY"))
(shadow '*LOW* (find-package "NASA_R2_COMMON_MSGS::PRIORITYARRAY"))
(defconstant nasa_r2_common_msgs::PriorityArray::*LOW* 4)
(intern "*OPT*" (find-package "NASA_R2_COMMON_MSGS::PRIORITYARRAY"))
(shadow '*OPT* (find-package "NASA_R2_COMMON_MSGS::PRIORITYARRAY"))
(defconstant nasa_r2_common_msgs::PriorityArray::*OPT* 5)
(defclass nasa_r2_common_msgs::PriorityArray
  :super ros::object
  :slots (_axis_priorities ))

(defmethod nasa_r2_common_msgs::PriorityArray
  (:init
   (&key
    ((:axis_priorities __axis_priorities) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _axis_priorities __axis_priorities)
   self)
  (:axis_priorities
   (&optional __axis_priorities)
   (if __axis_priorities (setq _axis_priorities __axis_priorities)) _axis_priorities)
  (:serialization-length
   ()
   (+
    ;; uint8[] _axis_priorities
    (* 1    (length _axis_priorities)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _axis_priorities
     (write-long (length _axis_priorities) s)
     (princ _axis_priorities s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _axis_priorities
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _axis_priorities (make-array n :element-type :char))
     (replace _axis_priorities buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::PriorityArray :md5sum-) "b680195622dc1787258149093c8d5b54")
(setf (get nasa_r2_common_msgs::PriorityArray :datatype-) "nasa_r2_common_msgs/PriorityArray")
(setf (get nasa_r2_common_msgs::PriorityArray :definition-)
      "# axis_priorities must be 0, 1, or 6 elements
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

")



(provide :nasa_r2_common_msgs/PriorityArray "b680195622dc1787258149093c8d5b54")


