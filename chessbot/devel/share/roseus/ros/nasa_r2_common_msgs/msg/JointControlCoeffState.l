;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::JointControlCoeffState)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'JointControlCoeffState (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOEFFSTATE")
  (make-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOEFFSTATE"))

(in-package "ROS")
;;//! \htmlinclude JointControlCoeffState.msg.html


(intern "*NOTLOADED*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOEFFSTATE"))
(shadow '*NOTLOADED* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOEFFSTATE"))
(defconstant nasa_r2_common_msgs::JointControlCoeffState::*NOTLOADED* 0)
(intern "*LOADED*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOEFFSTATE"))
(shadow '*LOADED* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCOEFFSTATE"))
(defconstant nasa_r2_common_msgs::JointControlCoeffState::*LOADED* 1)
(defclass nasa_r2_common_msgs::JointControlCoeffState
  :super ros::object
  :slots (_state ))

(defmethod nasa_r2_common_msgs::JointControlCoeffState
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

(setf (get nasa_r2_common_msgs::JointControlCoeffState :md5sum-) "966d7f4905b379809fca49c080512d9a")
(setf (get nasa_r2_common_msgs::JointControlCoeffState :datatype-) "nasa_r2_common_msgs/JointControlCoeffState")
(setf (get nasa_r2_common_msgs::JointControlCoeffState :definition-)
      "uint8 state
uint8 NOTLOADED = 0
uint8 LOADED    = 1

")



(provide :nasa_r2_common_msgs/JointControlCoeffState "966d7f4905b379809fca49c080512d9a")


