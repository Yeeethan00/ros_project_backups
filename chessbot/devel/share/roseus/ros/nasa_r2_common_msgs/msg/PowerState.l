;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::PowerState)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'PowerState (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::POWERSTATE")
  (make-package "NASA_R2_COMMON_MSGS::POWERSTATE"))

(in-package "ROS")
;;//! \htmlinclude PowerState.msg.html


(intern "*UNKNOWN*" (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(shadow '*UNKNOWN* (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(defconstant nasa_r2_common_msgs::PowerState::*UNKNOWN* 0)
(intern "*POWER_OFF*" (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(shadow '*POWER_OFF* (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(defconstant nasa_r2_common_msgs::PowerState::*POWER_OFF* 1)
(intern "*LOGIC_POWER*" (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(shadow '*LOGIC_POWER* (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(defconstant nasa_r2_common_msgs::PowerState::*LOGIC_POWER* 2)
(intern "*MOTOR_POWER*" (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(shadow '*MOTOR_POWER* (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(defconstant nasa_r2_common_msgs::PowerState::*MOTOR_POWER* 3)
(intern "*MOTOR48_POWER*" (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(shadow '*MOTOR48_POWER* (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(defconstant nasa_r2_common_msgs::PowerState::*MOTOR48_POWER* 4)
(intern "*MOTOR96_POWER*" (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(shadow '*MOTOR96_POWER* (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(defconstant nasa_r2_common_msgs::PowerState::*MOTOR96_POWER* 5)
(intern "*FAULTED*" (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(shadow '*FAULTED* (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(defconstant nasa_r2_common_msgs::PowerState::*FAULTED* 6)
(intern "*TRANSITIONING*" (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(shadow '*TRANSITIONING* (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(defconstant nasa_r2_common_msgs::PowerState::*TRANSITIONING* 7)
(intern "*IGNORE*" (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(shadow '*IGNORE* (find-package "NASA_R2_COMMON_MSGS::POWERSTATE"))
(defconstant nasa_r2_common_msgs::PowerState::*IGNORE* 8)
(defclass nasa_r2_common_msgs::PowerState
  :super ros::object
  :slots (_data ))

(defmethod nasa_r2_common_msgs::PowerState
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8 _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _data
       (write-byte _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _data
     (setq _data (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::PowerState :md5sum-) "584ec0c2e2cf9b94d0b9da5027668714")
(setf (get nasa_r2_common_msgs::PowerState :datatype-) "nasa_r2_common_msgs/PowerState")
(setf (get nasa_r2_common_msgs::PowerState :definition-)
      "uint8 data
uint8 UNKNOWN       = 0
uint8 POWER_OFF     = 1
uint8 LOGIC_POWER   = 2
uint8 MOTOR_POWER   = 3
uint8 MOTOR48_POWER = 4
uint8 MOTOR96_POWER = 5
uint8 FAULTED       = 6
uint8 TRANSITIONING = 7
uint8 IGNORE        = 8

")



(provide :nasa_r2_common_msgs/PowerState "584ec0c2e2cf9b94d0b9da5027668714")


