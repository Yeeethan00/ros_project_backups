;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::ReplanType)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'ReplanType (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::REPLANTYPE")
  (make-package "NASA_R2_COMMON_MSGS::REPLANTYPE"))

(in-package "ROS")
;;//! \htmlinclude ReplanType.msg.html


(intern "*NONE*" (find-package "NASA_R2_COMMON_MSGS::REPLANTYPE"))
(shadow '*NONE* (find-package "NASA_R2_COMMON_MSGS::REPLANTYPE"))
(defconstant nasa_r2_common_msgs::ReplanType::*NONE* 0)
(intern "*SOFT*" (find-package "NASA_R2_COMMON_MSGS::REPLANTYPE"))
(shadow '*SOFT* (find-package "NASA_R2_COMMON_MSGS::REPLANTYPE"))
(defconstant nasa_r2_common_msgs::ReplanType::*SOFT* 1)
(intern "*HARD*" (find-package "NASA_R2_COMMON_MSGS::REPLANTYPE"))
(shadow '*HARD* (find-package "NASA_R2_COMMON_MSGS::REPLANTYPE"))
(defconstant nasa_r2_common_msgs::ReplanType::*HARD* 2)
(intern "*STOP*" (find-package "NASA_R2_COMMON_MSGS::REPLANTYPE"))
(shadow '*STOP* (find-package "NASA_R2_COMMON_MSGS::REPLANTYPE"))
(defconstant nasa_r2_common_msgs::ReplanType::*STOP* 3)
(intern "*PAUSE*" (find-package "NASA_R2_COMMON_MSGS::REPLANTYPE"))
(shadow '*PAUSE* (find-package "NASA_R2_COMMON_MSGS::REPLANTYPE"))
(defconstant nasa_r2_common_msgs::ReplanType::*PAUSE* 4)
(intern "*CONTINUE*" (find-package "NASA_R2_COMMON_MSGS::REPLANTYPE"))
(shadow '*CONTINUE* (find-package "NASA_R2_COMMON_MSGS::REPLANTYPE"))
(defconstant nasa_r2_common_msgs::ReplanType::*CONTINUE* 5)
(defclass nasa_r2_common_msgs::ReplanType
  :super ros::object
  :slots (_type ))

(defmethod nasa_r2_common_msgs::ReplanType
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::ReplanType :md5sum-) "98758e5172733aa54a4f24dd99cdd00f")
(setf (get nasa_r2_common_msgs::ReplanType :datatype-) "nasa_r2_common_msgs/ReplanType")
(setf (get nasa_r2_common_msgs::ReplanType :definition-)
      "uint8 type

uint8 NONE = 0
uint8 SOFT = 1
uint8 HARD = 2
uint8 STOP = 3
uint8 PAUSE = 4
uint8 CONTINUE = 5

")



(provide :nasa_r2_common_msgs/ReplanType "98758e5172733aa54a4f24dd99cdd00f")


