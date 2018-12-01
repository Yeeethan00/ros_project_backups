;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::JointStatus)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'JointStatus (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::JOINTSTATUS")
  (make-package "NASA_R2_COMMON_MSGS::JOINTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude JointStatus.msg.html


(defclass nasa_r2_common_msgs::JointStatus
  :super ros::object
  :slots (_publisher _joint _registerValue _coeffsLoaded _bridgeEnabled _motorEnabled _brakeReleased _motorPowerDetected _embeddedMotCom _jointFaulted ))

(defmethod nasa_r2_common_msgs::JointStatus
  (:init
   (&key
    ((:publisher __publisher) "")
    ((:joint __joint) "")
    ((:registerValue __registerValue) 0)
    ((:coeffsLoaded __coeffsLoaded) nil)
    ((:bridgeEnabled __bridgeEnabled) nil)
    ((:motorEnabled __motorEnabled) nil)
    ((:brakeReleased __brakeReleased) nil)
    ((:motorPowerDetected __motorPowerDetected) nil)
    ((:embeddedMotCom __embeddedMotCom) nil)
    ((:jointFaulted __jointFaulted) nil)
    )
   (send-super :init)
   (setq _publisher (string __publisher))
   (setq _joint (string __joint))
   (setq _registerValue (round __registerValue))
   (setq _coeffsLoaded __coeffsLoaded)
   (setq _bridgeEnabled __bridgeEnabled)
   (setq _motorEnabled __motorEnabled)
   (setq _brakeReleased __brakeReleased)
   (setq _motorPowerDetected __motorPowerDetected)
   (setq _embeddedMotCom __embeddedMotCom)
   (setq _jointFaulted __jointFaulted)
   self)
  (:publisher
   (&optional __publisher)
   (if __publisher (setq _publisher __publisher)) _publisher)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:registerValue
   (&optional __registerValue)
   (if __registerValue (setq _registerValue __registerValue)) _registerValue)
  (:coeffsLoaded
   (&optional __coeffsLoaded)
   (if __coeffsLoaded (setq _coeffsLoaded __coeffsLoaded)) _coeffsLoaded)
  (:bridgeEnabled
   (&optional __bridgeEnabled)
   (if __bridgeEnabled (setq _bridgeEnabled __bridgeEnabled)) _bridgeEnabled)
  (:motorEnabled
   (&optional __motorEnabled)
   (if __motorEnabled (setq _motorEnabled __motorEnabled)) _motorEnabled)
  (:brakeReleased
   (&optional __brakeReleased)
   (if __brakeReleased (setq _brakeReleased __brakeReleased)) _brakeReleased)
  (:motorPowerDetected
   (&optional __motorPowerDetected)
   (if __motorPowerDetected (setq _motorPowerDetected __motorPowerDetected)) _motorPowerDetected)
  (:embeddedMotCom
   (&optional __embeddedMotCom)
   (if __embeddedMotCom (setq _embeddedMotCom __embeddedMotCom)) _embeddedMotCom)
  (:jointFaulted
   (&optional __jointFaulted)
   (if __jointFaulted (setq _jointFaulted __jointFaulted)) _jointFaulted)
  (:serialization-length
   ()
   (+
    ;; string _publisher
    4 (length _publisher)
    ;; string _joint
    4 (length _joint)
    ;; uint32 _registerValue
    4
    ;; bool _coeffsLoaded
    1
    ;; bool _bridgeEnabled
    1
    ;; bool _motorEnabled
    1
    ;; bool _brakeReleased
    1
    ;; bool _motorPowerDetected
    1
    ;; bool _embeddedMotCom
    1
    ;; bool _jointFaulted
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _publisher
       (write-long (length _publisher) s) (princ _publisher s)
     ;; string _joint
       (write-long (length _joint) s) (princ _joint s)
     ;; uint32 _registerValue
       (write-long _registerValue s)
     ;; bool _coeffsLoaded
       (if _coeffsLoaded (write-byte -1 s) (write-byte 0 s))
     ;; bool _bridgeEnabled
       (if _bridgeEnabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _motorEnabled
       (if _motorEnabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _brakeReleased
       (if _brakeReleased (write-byte -1 s) (write-byte 0 s))
     ;; bool _motorPowerDetected
       (if _motorPowerDetected (write-byte -1 s) (write-byte 0 s))
     ;; bool _embeddedMotCom
       (if _embeddedMotCom (write-byte -1 s) (write-byte 0 s))
     ;; bool _jointFaulted
       (if _jointFaulted (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _publisher
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _publisher (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _joint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _registerValue
     (setq _registerValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _coeffsLoaded
     (setq _coeffsLoaded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bridgeEnabled
     (setq _bridgeEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motorEnabled
     (setq _motorEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _brakeReleased
     (setq _brakeReleased (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motorPowerDetected
     (setq _motorPowerDetected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _embeddedMotCom
     (setq _embeddedMotCom (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _jointFaulted
     (setq _jointFaulted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::JointStatus :md5sum-) "69537d8fb608e752f0cf704b8738add6")
(setf (get nasa_r2_common_msgs::JointStatus :datatype-) "nasa_r2_common_msgs/JointStatus")
(setf (get nasa_r2_common_msgs::JointStatus :definition-)
      "string publisher
string joint
uint32 registerValue
bool coeffsLoaded
bool bridgeEnabled
bool motorEnabled
bool brakeReleased
bool motorPowerDetected
bool embeddedMotCom
bool jointFaulted

")



(provide :nasa_r2_common_msgs/JointStatus "69537d8fb608e752f0cf704b8738add6")


