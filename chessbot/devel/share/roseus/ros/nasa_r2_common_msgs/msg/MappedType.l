;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::MappedType)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'MappedType (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE")
  (make-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE"))

(in-package "ROS")
;;//! \htmlinclude MappedType.msg.html


(intern "*STRING*" (find-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE"))
(shadow '*STRING* (find-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE"))
(defconstant nasa_r2_common_msgs::MappedType::*STRING* 0)
(intern "*UINT16*" (find-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE"))
(shadow '*UINT16* (find-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE"))
(defconstant nasa_r2_common_msgs::MappedType::*UINT16* 1)
(intern "*INT16*" (find-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE"))
(shadow '*INT16* (find-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE"))
(defconstant nasa_r2_common_msgs::MappedType::*INT16* 2)
(intern "*UINT32*" (find-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE"))
(shadow '*UINT32* (find-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE"))
(defconstant nasa_r2_common_msgs::MappedType::*UINT32* 3)
(intern "*INT32*" (find-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE"))
(shadow '*INT32* (find-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE"))
(defconstant nasa_r2_common_msgs::MappedType::*INT32* 4)
(intern "*FLOAT32*" (find-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE"))
(shadow '*FLOAT32* (find-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE"))
(defconstant nasa_r2_common_msgs::MappedType::*FLOAT32* 5)
(intern "*BOOL*" (find-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE"))
(shadow '*BOOL* (find-package "NASA_R2_COMMON_MSGS::MAPPEDTYPE"))
(defconstant nasa_r2_common_msgs::MappedType::*BOOL* 6)
(defclass nasa_r2_common_msgs::MappedType
  :super ros::object
  :slots (_type ))

(defmethod nasa_r2_common_msgs::MappedType
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

(setf (get nasa_r2_common_msgs::MappedType :md5sum-) "f61664a4dc14b6b365fb43df66f4679e")
(setf (get nasa_r2_common_msgs::MappedType :datatype-) "nasa_r2_common_msgs/MappedType")
(setf (get nasa_r2_common_msgs::MappedType :definition-)
      "uint8 STRING  = 0
uint8 UINT16  = 1
uint8 INT16   = 2
uint8 UINT32  = 3
uint8 INT32   = 4
uint8 FLOAT32 = 5
uint8 BOOL    = 6

uint8 type

")



(provide :nasa_r2_common_msgs/MappedType "f61664a4dc14b6b365fb43df66f4679e")


