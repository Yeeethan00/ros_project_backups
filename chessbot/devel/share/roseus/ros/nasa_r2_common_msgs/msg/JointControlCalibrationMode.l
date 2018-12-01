;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::JointControlCalibrationMode)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'JointControlCalibrationMode (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCALIBRATIONMODE")
  (make-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCALIBRATIONMODE"))

(in-package "ROS")
;;//! \htmlinclude JointControlCalibrationMode.msg.html


(intern "*IGNORE*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCALIBRATIONMODE"))
(shadow '*IGNORE* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCALIBRATIONMODE"))
(defconstant nasa_r2_common_msgs::JointControlCalibrationMode::*IGNORE* 0)
(intern "*DISABLE*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCALIBRATIONMODE"))
(shadow '*DISABLE* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCALIBRATIONMODE"))
(defconstant nasa_r2_common_msgs::JointControlCalibrationMode::*DISABLE* 1)
(intern "*ENABLE*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCALIBRATIONMODE"))
(shadow '*ENABLE* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCALIBRATIONMODE"))
(defconstant nasa_r2_common_msgs::JointControlCalibrationMode::*ENABLE* 2)
(intern "*UNCALIBRATED*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCALIBRATIONMODE"))
(shadow '*UNCALIBRATED* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCALIBRATIONMODE"))
(defconstant nasa_r2_common_msgs::JointControlCalibrationMode::*UNCALIBRATED* 3)
(defclass nasa_r2_common_msgs::JointControlCalibrationMode
  :super ros::object
  :slots (_state ))

(defmethod nasa_r2_common_msgs::JointControlCalibrationMode
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

(setf (get nasa_r2_common_msgs::JointControlCalibrationMode :md5sum-) "37d6fda8e16d375dbb150fda1a045756")
(setf (get nasa_r2_common_msgs::JointControlCalibrationMode :datatype-) "nasa_r2_common_msgs/JointControlCalibrationMode")
(setf (get nasa_r2_common_msgs::JointControlCalibrationMode :definition-)
      "uint8 state
uint8 IGNORE       = 0
uint8 DISABLE      = 1
uint8 ENABLE       = 2
uint8 UNCALIBRATED = 3

")



(provide :nasa_r2_common_msgs/JointControlCalibrationMode "37d6fda8e16d375dbb150fda1a045756")


