;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::JointControl)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'JointControl (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::JOINTCONTROL")
  (make-package "NASA_R2_COMMON_MSGS::JOINTCONTROL"))

(in-package "ROS")
;;//! \htmlinclude JointControl.msg.html


(defclass nasa_r2_common_msgs::JointControl
  :super ros::object
  :slots (_publisher _timeStamp _joint _registerValue _enableBridge _enableMotor _releaseBrake _embeddedMotCom _controlMode _clearFaults ))

(defmethod nasa_r2_common_msgs::JointControl
  (:init
   (&key
    ((:publisher __publisher) "")
    ((:timeStamp __timeStamp) 0.0)
    ((:joint __joint) "")
    ((:registerValue __registerValue) 0)
    ((:enableBridge __enableBridge) nil)
    ((:enableMotor __enableMotor) nil)
    ((:releaseBrake __releaseBrake) nil)
    ((:embeddedMotCom __embeddedMotCom) nil)
    ((:controlMode __controlMode) 0)
    ((:clearFaults __clearFaults) nil)
    )
   (send-super :init)
   (setq _publisher (string __publisher))
   (setq _timeStamp (float __timeStamp))
   (setq _joint (string __joint))
   (setq _registerValue (round __registerValue))
   (setq _enableBridge __enableBridge)
   (setq _enableMotor __enableMotor)
   (setq _releaseBrake __releaseBrake)
   (setq _embeddedMotCom __embeddedMotCom)
   (setq _controlMode (round __controlMode))
   (setq _clearFaults __clearFaults)
   self)
  (:publisher
   (&optional __publisher)
   (if __publisher (setq _publisher __publisher)) _publisher)
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:registerValue
   (&optional __registerValue)
   (if __registerValue (setq _registerValue __registerValue)) _registerValue)
  (:enableBridge
   (&optional __enableBridge)
   (if __enableBridge (setq _enableBridge __enableBridge)) _enableBridge)
  (:enableMotor
   (&optional __enableMotor)
   (if __enableMotor (setq _enableMotor __enableMotor)) _enableMotor)
  (:releaseBrake
   (&optional __releaseBrake)
   (if __releaseBrake (setq _releaseBrake __releaseBrake)) _releaseBrake)
  (:embeddedMotCom
   (&optional __embeddedMotCom)
   (if __embeddedMotCom (setq _embeddedMotCom __embeddedMotCom)) _embeddedMotCom)
  (:controlMode
   (&optional __controlMode)
   (if __controlMode (setq _controlMode __controlMode)) _controlMode)
  (:clearFaults
   (&optional __clearFaults)
   (if __clearFaults (setq _clearFaults __clearFaults)) _clearFaults)
  (:serialization-length
   ()
   (+
    ;; string _publisher
    4 (length _publisher)
    ;; float64 _timeStamp
    8
    ;; string _joint
    4 (length _joint)
    ;; uint32 _registerValue
    4
    ;; bool _enableBridge
    1
    ;; bool _enableMotor
    1
    ;; bool _releaseBrake
    1
    ;; bool _embeddedMotCom
    1
    ;; uint16 _controlMode
    2
    ;; bool _clearFaults
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _publisher
       (write-long (length _publisher) s) (princ _publisher s)
     ;; float64 _timeStamp
       (sys::poke _timeStamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _joint
       (write-long (length _joint) s) (princ _joint s)
     ;; uint32 _registerValue
       (write-long _registerValue s)
     ;; bool _enableBridge
       (if _enableBridge (write-byte -1 s) (write-byte 0 s))
     ;; bool _enableMotor
       (if _enableMotor (write-byte -1 s) (write-byte 0 s))
     ;; bool _releaseBrake
       (if _releaseBrake (write-byte -1 s) (write-byte 0 s))
     ;; bool _embeddedMotCom
       (if _embeddedMotCom (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _controlMode
       (write-word _controlMode s)
     ;; bool _clearFaults
       (if _clearFaults (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _publisher
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _publisher (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _joint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _registerValue
     (setq _registerValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _enableBridge
     (setq _enableBridge (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enableMotor
     (setq _enableMotor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _releaseBrake
     (setq _releaseBrake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _embeddedMotCom
     (setq _embeddedMotCom (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _controlMode
     (setq _controlMode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _clearFaults
     (setq _clearFaults (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::JointControl :md5sum-) "e38c02f4ffdedb57646a4576b7e0ccf6")
(setf (get nasa_r2_common_msgs::JointControl :datatype-) "nasa_r2_common_msgs/JointControl")
(setf (get nasa_r2_common_msgs::JointControl :definition-)
      "string publisher
float64 timeStamp
string joint
uint32 registerValue
bool enableBridge
bool enableMotor
bool releaseBrake
bool embeddedMotCom
uint16 controlMode
bool clearFaults

")



(provide :nasa_r2_common_msgs/JointControl "e38c02f4ffdedb57646a4576b7e0ccf6")


