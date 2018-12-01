;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::ForceControlAxis)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'ForceControlAxis (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXIS")
  (make-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXIS"))

(in-package "ROS")
;;//! \htmlinclude ForceControlAxis.msg.html


(intern "*X*" (find-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXIS"))
(shadow '*X* (find-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXIS"))
(defconstant nasa_r2_common_msgs::ForceControlAxis::*X* 0)
(intern "*Y*" (find-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXIS"))
(shadow '*Y* (find-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXIS"))
(defconstant nasa_r2_common_msgs::ForceControlAxis::*Y* 1)
(intern "*Z*" (find-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXIS"))
(shadow '*Z* (find-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXIS"))
(defconstant nasa_r2_common_msgs::ForceControlAxis::*Z* 2)
(intern "*ROLL*" (find-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXIS"))
(shadow '*ROLL* (find-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXIS"))
(defconstant nasa_r2_common_msgs::ForceControlAxis::*ROLL* 3)
(intern "*PITCH*" (find-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXIS"))
(shadow '*PITCH* (find-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXIS"))
(defconstant nasa_r2_common_msgs::ForceControlAxis::*PITCH* 4)
(intern "*YAW*" (find-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXIS"))
(shadow '*YAW* (find-package "NASA_R2_COMMON_MSGS::FORCECONTROLAXIS"))
(defconstant nasa_r2_common_msgs::ForceControlAxis::*YAW* 5)
(defclass nasa_r2_common_msgs::ForceControlAxis
  :super ros::object
  :slots (_axis _magnitude ))

(defmethod nasa_r2_common_msgs::ForceControlAxis
  (:init
   (&key
    ((:axis __axis) (make-array 0 :initial-element 0 :element-type :char))
    ((:magnitude __magnitude) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _axis __axis)
   (setq _magnitude __magnitude)
   self)
  (:axis
   (&optional __axis)
   (if __axis (setq _axis __axis)) _axis)
  (:magnitude
   (&optional __magnitude)
   (if __magnitude (setq _magnitude __magnitude)) _magnitude)
  (:serialization-length
   ()
   (+
    ;; uint8[] _axis
    (* 1    (length _axis)) 4
    ;; float32[] _magnitude
    (* 4    (length _magnitude)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _axis
     (write-long (length _axis) s)
     (princ _axis s)
     ;; float32[] _magnitude
     (write-long (length _magnitude) s)
     (dotimes (i (length _magnitude))
       (sys::poke (elt _magnitude i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _axis
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _axis (make-array n :element-type :char))
     (replace _axis buf :start2 ptr-) (incf ptr- n))
   ;; float32[] _magnitude
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _magnitude (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _magnitude i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::ForceControlAxis :md5sum-) "e8efe484fba93bec26ea428bb18a05f9")
(setf (get nasa_r2_common_msgs::ForceControlAxis :datatype-) "nasa_r2_common_msgs/ForceControlAxis")
(setf (get nasa_r2_common_msgs::ForceControlAxis :definition-)
      "uint8[] axis
float32[] magnitude

uint8 X       = 0
uint8 Y       = 1
uint8 Z       = 2
uint8 ROLL    = 3
uint8 PITCH   = 4
uint8 YAW     = 5

")



(provide :nasa_r2_common_msgs/ForceControlAxis "e8efe484fba93bec26ea428bb18a05f9")


