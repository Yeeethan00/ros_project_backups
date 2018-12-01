;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::PDMCStatus)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'PDMCStatus (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::PDMCSTATUS")
  (make-package "NASA_R2_COMMON_MSGS::PDMCSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PDMCStatus.msg.html


(defclass nasa_r2_common_msgs::PDMCStatus
  :super ros::object
  :slots (_publisher _registerValue _logicEnabled _motorEnabled ))

(defmethod nasa_r2_common_msgs::PDMCStatus
  (:init
   (&key
    ((:publisher __publisher) "")
    ((:registerValue __registerValue) 0)
    ((:logicEnabled __logicEnabled) nil)
    ((:motorEnabled __motorEnabled) nil)
    )
   (send-super :init)
   (setq _publisher (string __publisher))
   (setq _registerValue (round __registerValue))
   (setq _logicEnabled __logicEnabled)
   (setq _motorEnabled __motorEnabled)
   self)
  (:publisher
   (&optional __publisher)
   (if __publisher (setq _publisher __publisher)) _publisher)
  (:registerValue
   (&optional __registerValue)
   (if __registerValue (setq _registerValue __registerValue)) _registerValue)
  (:logicEnabled
   (&optional __logicEnabled)
   (if __logicEnabled (setq _logicEnabled __logicEnabled)) _logicEnabled)
  (:motorEnabled
   (&optional __motorEnabled)
   (if __motorEnabled (setq _motorEnabled __motorEnabled)) _motorEnabled)
  (:serialization-length
   ()
   (+
    ;; string _publisher
    4 (length _publisher)
    ;; uint32 _registerValue
    4
    ;; bool _logicEnabled
    1
    ;; bool _motorEnabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _publisher
       (write-long (length _publisher) s) (princ _publisher s)
     ;; uint32 _registerValue
       (write-long _registerValue s)
     ;; bool _logicEnabled
       (if _logicEnabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _motorEnabled
       (if _motorEnabled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _publisher
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _publisher (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _registerValue
     (setq _registerValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _logicEnabled
     (setq _logicEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motorEnabled
     (setq _motorEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::PDMCStatus :md5sum-) "a68d9dc9991d8f304fc3adff90114aa5")
(setf (get nasa_r2_common_msgs::PDMCStatus :datatype-) "nasa_r2_common_msgs/PDMCStatus")
(setf (get nasa_r2_common_msgs::PDMCStatus :definition-)
      "string publisher
uint32 registerValue
bool logicEnabled
bool motorEnabled

")



(provide :nasa_r2_common_msgs/PDMCStatus "a68d9dc9991d8f304fc3adff90114aa5")


