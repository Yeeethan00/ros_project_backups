;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::JointControlCommandMode)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'JointControlCommandMode (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE")
  (make-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE"))

(in-package "ROS")
;;//! \htmlinclude JointControlCommandMode.msg.html


(intern "*IGNORE*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE"))
(shadow '*IGNORE* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE"))
(defconstant nasa_r2_common_msgs::JointControlCommandMode::*IGNORE* 0)
(intern "*INVALID*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE"))
(shadow '*INVALID* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE"))
(defconstant nasa_r2_common_msgs::JointControlCommandMode::*INVALID* 1)
(intern "*MOTCOM*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE"))
(shadow '*MOTCOM* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE"))
(defconstant nasa_r2_common_msgs::JointControlCommandMode::*MOTCOM* 2)
(intern "*MULTILOOPSTEP*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE"))
(shadow '*MULTILOOPSTEP* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE"))
(defconstant nasa_r2_common_msgs::JointControlCommandMode::*MULTILOOPSTEP* 3)
(intern "*MULTILOOPSMOOTH*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE"))
(shadow '*MULTILOOPSMOOTH* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE"))
(defconstant nasa_r2_common_msgs::JointControlCommandMode::*MULTILOOPSMOOTH* 4)
(intern "*ACTUATOR*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE"))
(shadow '*ACTUATOR* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE"))
(defconstant nasa_r2_common_msgs::JointControlCommandMode::*ACTUATOR* 5)
(intern "*STALLMODE*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE"))
(shadow '*STALLMODE* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOMMANDMODE"))
(defconstant nasa_r2_common_msgs::JointControlCommandMode::*STALLMODE* 6)
(defclass nasa_r2_common_msgs::JointControlCommandMode
  :super ros::object
  :slots (_state ))

(defmethod nasa_r2_common_msgs::JointControlCommandMode
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

(setf (get nasa_r2_common_msgs::JointControlCommandMode :md5sum-) "f9c51a2c2167cabb38ab513659b6ab0a")
(setf (get nasa_r2_common_msgs::JointControlCommandMode :datatype-) "nasa_r2_common_msgs/JointControlCommandMode")
(setf (get nasa_r2_common_msgs::JointControlCommandMode :definition-)
      "uint8 state
uint8 IGNORE          = 0
uint8 INVALID         = 1
uint8 MOTCOM          = 2
uint8 MULTILOOPSTEP   = 3
uint8 MULTILOOPSMOOTH = 4
uint8 ACTUATOR        = 5
uint8 STALLMODE       = 6

")



(provide :nasa_r2_common_msgs/JointControlCommandMode "f9c51a2c2167cabb38ab513659b6ab0a")


