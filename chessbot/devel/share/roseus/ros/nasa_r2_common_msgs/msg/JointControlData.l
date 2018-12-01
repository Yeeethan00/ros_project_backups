;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::JointControlData)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'JointControlData (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROLDATA")
  (make-package "NASA_R2_COMMON_MSGS::JOINTCONTROLDATA"))

(in-package "ROS")
;;//! \htmlinclude JointControlData.msg.html


(defclass nasa_r2_common_msgs::JointControlData
  :super ros::object
  :slots (_controlMode _commandMode _calibrationMode _clearFaultMode _coeffState ))

(defmethod nasa_r2_common_msgs::JointControlData
  (:init
   (&key
    ((:controlMode __controlMode) (instance nasa_r2_common_msgs::JointControlMode :init))
    ((:commandMode __commandMode) (instance nasa_r2_common_msgs::JointControlCommandMode :init))
    ((:calibrationMode __calibrationMode) (instance nasa_r2_common_msgs::JointControlCalibrationMode :init))
    ((:clearFaultMode __clearFaultMode) (instance nasa_r2_common_msgs::JointControlClearFaultMode :init))
    ((:coeffState __coeffState) (instance nasa_r2_common_msgs::JointControlCoeffState :init))
    )
   (send-super :init)
   (setq _controlMode __controlMode)
   (setq _commandMode __commandMode)
   (setq _calibrationMode __calibrationMode)
   (setq _clearFaultMode __clearFaultMode)
   (setq _coeffState __coeffState)
   self)
  (:controlMode
   (&rest __controlMode)
   (if (keywordp (car __controlMode))
       (send* _controlMode __controlMode)
     (progn
       (if __controlMode (setq _controlMode (car __controlMode)))
       _controlMode)))
  (:commandMode
   (&rest __commandMode)
   (if (keywordp (car __commandMode))
       (send* _commandMode __commandMode)
     (progn
       (if __commandMode (setq _commandMode (car __commandMode)))
       _commandMode)))
  (:calibrationMode
   (&rest __calibrationMode)
   (if (keywordp (car __calibrationMode))
       (send* _calibrationMode __calibrationMode)
     (progn
       (if __calibrationMode (setq _calibrationMode (car __calibrationMode)))
       _calibrationMode)))
  (:clearFaultMode
   (&rest __clearFaultMode)
   (if (keywordp (car __clearFaultMode))
       (send* _clearFaultMode __clearFaultMode)
     (progn
       (if __clearFaultMode (setq _clearFaultMode (car __clearFaultMode)))
       _clearFaultMode)))
  (:coeffState
   (&rest __coeffState)
   (if (keywordp (car __coeffState))
       (send* _coeffState __coeffState)
     (progn
       (if __coeffState (setq _coeffState (car __coeffState)))
       _coeffState)))
  (:serialization-length
   ()
   (+
    ;; nasa_r2_common_msgs/JointControlMode _controlMode
    (send _controlMode :serialization-length)
    ;; nasa_r2_common_msgs/JointControlCommandMode _commandMode
    (send _commandMode :serialization-length)
    ;; nasa_r2_common_msgs/JointControlCalibrationMode _calibrationMode
    (send _calibrationMode :serialization-length)
    ;; nasa_r2_common_msgs/JointControlClearFaultMode _clearFaultMode
    (send _clearFaultMode :serialization-length)
    ;; nasa_r2_common_msgs/JointControlCoeffState _coeffState
    (send _coeffState :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nasa_r2_common_msgs/JointControlMode _controlMode
       (send _controlMode :serialize s)
     ;; nasa_r2_common_msgs/JointControlCommandMode _commandMode
       (send _commandMode :serialize s)
     ;; nasa_r2_common_msgs/JointControlCalibrationMode _calibrationMode
       (send _calibrationMode :serialize s)
     ;; nasa_r2_common_msgs/JointControlClearFaultMode _clearFaultMode
       (send _clearFaultMode :serialize s)
     ;; nasa_r2_common_msgs/JointControlCoeffState _coeffState
       (send _coeffState :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nasa_r2_common_msgs/JointControlMode _controlMode
     (send _controlMode :deserialize buf ptr-) (incf ptr- (send _controlMode :serialization-length))
   ;; nasa_r2_common_msgs/JointControlCommandMode _commandMode
     (send _commandMode :deserialize buf ptr-) (incf ptr- (send _commandMode :serialization-length))
   ;; nasa_r2_common_msgs/JointControlCalibrationMode _calibrationMode
     (send _calibrationMode :deserialize buf ptr-) (incf ptr- (send _calibrationMode :serialization-length))
   ;; nasa_r2_common_msgs/JointControlClearFaultMode _clearFaultMode
     (send _clearFaultMode :deserialize buf ptr-) (incf ptr- (send _clearFaultMode :serialization-length))
   ;; nasa_r2_common_msgs/JointControlCoeffState _coeffState
     (send _coeffState :deserialize buf ptr-) (incf ptr- (send _coeffState :serialization-length))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::JointControlData :md5sum-) "fedf678b0c3640f2a0cd4265c858b481")
(setf (get nasa_r2_common_msgs::JointControlData :datatype-) "nasa_r2_common_msgs/JointControlData")
(setf (get nasa_r2_common_msgs::JointControlData :definition-)
      "JointControlMode            controlMode
JointControlCommandMode     commandMode
JointControlCalibrationMode calibrationMode
JointControlClearFaultMode  clearFaultMode
JointControlCoeffState      coeffState

================================================================================
MSG: nasa_r2_common_msgs/JointControlMode
uint8 state
uint8 IGNORE     = 0
uint8 INVALID    = 1
uint8 BOOTLOADER = 2
uint8 FAULTED    = 3
uint8 SAFE       = 4
uint8 OFF        = 5
uint8 PARK       = 6
uint8 NEUTRAL    = 7
uint8 DRIVE      = 8

================================================================================
MSG: nasa_r2_common_msgs/JointControlCommandMode
uint8 state
uint8 IGNORE          = 0
uint8 INVALID         = 1
uint8 MOTCOM          = 2
uint8 MULTILOOPSTEP   = 3
uint8 MULTILOOPSMOOTH = 4
uint8 ACTUATOR        = 5
uint8 STALLMODE       = 6

================================================================================
MSG: nasa_r2_common_msgs/JointControlCalibrationMode
uint8 state
uint8 IGNORE       = 0
uint8 DISABLE      = 1
uint8 ENABLE       = 2
uint8 UNCALIBRATED = 3

================================================================================
MSG: nasa_r2_common_msgs/JointControlClearFaultMode
uint8 state
uint8 IGNORE  = 0
uint8 DISABLE = 1
uint8 ENABLE  = 2

================================================================================
MSG: nasa_r2_common_msgs/JointControlCoeffState
uint8 state
uint8 NOTLOADED = 0
uint8 LOADED    = 1

")



(provide :nasa_r2_common_msgs/JointControlData "fedf678b0c3640f2a0cd4265c858b481")


