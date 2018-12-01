;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::JointControlMode)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'JointControlMode (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE")
  (make-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))

(in-package "ROS")
;;//! \htmlinclude JointControlMode.msg.html


(intern "*IGNORE*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(shadow '*IGNORE* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(defconstant nasa_r2_common_msgs::JointControlMode::*IGNORE* 0)
(intern "*INVALID*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(shadow '*INVALID* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(defconstant nasa_r2_common_msgs::JointControlMode::*INVALID* 1)
(intern "*BOOTLOADER*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(shadow '*BOOTLOADER* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(defconstant nasa_r2_common_msgs::JointControlMode::*BOOTLOADER* 2)
(intern "*FAULTED*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(shadow '*FAULTED* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(defconstant nasa_r2_common_msgs::JointControlMode::*FAULTED* 3)
(intern "*SAFE*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(shadow '*SAFE* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(defconstant nasa_r2_common_msgs::JointControlMode::*SAFE* 4)
(intern "*OFF*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(shadow '*OFF* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(defconstant nasa_r2_common_msgs::JointControlMode::*OFF* 5)
(intern "*PARK*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(shadow '*PARK* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(defconstant nasa_r2_common_msgs::JointControlMode::*PARK* 6)
(intern "*NEUTRAL*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(shadow '*NEUTRAL* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(defconstant nasa_r2_common_msgs::JointControlMode::*NEUTRAL* 7)
(intern "*DRIVE*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(shadow '*DRIVE* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLMODE"))
(defconstant nasa_r2_common_msgs::JointControlMode::*DRIVE* 8)
(defclass nasa_r2_common_msgs::JointControlMode
  :super ros::object
  :slots (_state ))

(defmethod nasa_r2_common_msgs::JointControlMode
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::JointControlMode :md5sum-) "ed18104f2125248e91775725024700fe")
(setf (get nasa_r2_common_msgs::JointControlMode :datatype-) "nasa_r2_common_msgs/JointControlMode")
(setf (get nasa_r2_common_msgs::JointControlMode :definition-)
      "uint8 state
uint8 IGNORE     = 0
uint8 INVALID    = 1
uint8 BOOTLOADER = 2
uint8 FAULTED    = 3
uint8 SAFE       = 4
uint8 OFF        = 5
uint8 PARK       = 6
uint8 NEUTRAL    = 7
uint8 DRIVE      = 8

")



(provide :nasa_r2_common_msgs/JointControlMode "ed18104f2125248e91775725024700fe")


