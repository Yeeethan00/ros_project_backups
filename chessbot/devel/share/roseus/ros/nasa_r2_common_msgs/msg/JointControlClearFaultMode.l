;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::JointControlClearFaultMode)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'JointControlClearFaultMode (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCLEARFAULTMODE")
  (make-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCLEARFAULTMODE"))

(in-package "ROS")
;;//! \htmlinclude JointControlClearFaultMode.msg.html


(intern "*IGNORE*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCLEARFAULTMODE"))
(shadow '*IGNORE* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCLEARFAULTMODE"))
(defconstant nasa_r2_common_msgs::JointControlClearFaultMode::*IGNORE* 0)
(intern "*DISABLE*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCLEARFAULTMODE"))
(shadow '*DISABLE* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCLEARFAULTMODE"))
(defconstant nasa_r2_common_msgs::JointControlClearFaultMode::*DISABLE* 1)
(intern "*ENABLE*" (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCLEARFAULTMODE"))
(shadow '*ENABLE* (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLCLEARFAULTMODE"))
(defconstant nasa_r2_common_msgs::JointControlClearFaultMode::*ENABLE* 2)
(defclass nasa_r2_common_msgs::JointControlClearFaultMode
  :super ros::object
  :slots (_state ))

(defmethod nasa_r2_common_msgs::JointControlClearFaultMode
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

(setf (get nasa_r2_common_msgs::JointControlClearFaultMode :md5sum-) "fbfa308698e6773f87af15b3be02775b")
(setf (get nasa_r2_common_msgs::JointControlClearFaultMode :datatype-) "nasa_r2_common_msgs/JointControlClearFaultMode")
(setf (get nasa_r2_common_msgs::JointControlClearFaultMode :definition-)
      "uint8 state
uint8 IGNORE  = 0
uint8 DISABLE = 1
uint8 ENABLE  = 2

")



(provide :nasa_r2_common_msgs/JointControlClearFaultMode "fbfa308698e6773f87af15b3be02775b")


