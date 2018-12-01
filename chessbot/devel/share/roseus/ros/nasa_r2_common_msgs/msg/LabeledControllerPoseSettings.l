;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::LabeledControllerPoseSettings)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'LabeledControllerPoseSettings (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::LABELEDCONTROLLERPOSESETTINGS")
  (make-package "NASA_R2_COMMON_MSGS::LABELEDCONTROLLERPOSESETTINGS"))

(in-package "ROS")
;;//! \htmlinclude LabeledControllerPoseSettings.msg.html


(defclass nasa_r2_common_msgs::LabeledControllerPoseSettings
  :super ros::object
  :slots (_originator _maxLinearVelocity _maxRotationalVelocity _maxLinearAcceleration _maxRotationalAcceleration ))

(defmethod nasa_r2_common_msgs::LabeledControllerPoseSettings
  (:init
   (&key
    ((:originator __originator) "")
    ((:maxLinearVelocity __maxLinearVelocity) 0.0)
    ((:maxRotationalVelocity __maxRotationalVelocity) 0.0)
    ((:maxLinearAcceleration __maxLinearAcceleration) 0.0)
    ((:maxRotationalAcceleration __maxRotationalAcceleration) 0.0)
    )
   (send-super :init)
   (setq _originator (string __originator))
   (setq _maxLinearVelocity (float __maxLinearVelocity))
   (setq _maxRotationalVelocity (float __maxRotationalVelocity))
   (setq _maxLinearAcceleration (float __maxLinearAcceleration))
   (setq _maxRotationalAcceleration (float __maxRotationalAcceleration))
   self)
  (:originator
   (&optional __originator)
   (if __originator (setq _originator __originator)) _originator)
  (:maxLinearVelocity
   (&optional __maxLinearVelocity)
   (if __maxLinearVelocity (setq _maxLinearVelocity __maxLinearVelocity)) _maxLinearVelocity)
  (:maxRotationalVelocity
   (&optional __maxRotationalVelocity)
   (if __maxRotationalVelocity (setq _maxRotationalVelocity __maxRotationalVelocity)) _maxRotationalVelocity)
  (:maxLinearAcceleration
   (&optional __maxLinearAcceleration)
   (if __maxLinearAcceleration (setq _maxLinearAcceleration __maxLinearAcceleration)) _maxLinearAcceleration)
  (:maxRotationalAcceleration
   (&optional __maxRotationalAcceleration)
   (if __maxRotationalAcceleration (setq _maxRotationalAcceleration __maxRotationalAcceleration)) _maxRotationalAcceleration)
  (:serialization-length
   ()
   (+
    ;; string _originator
    4 (length _originator)
    ;; float64 _maxLinearVelocity
    8
    ;; float64 _maxRotationalVelocity
    8
    ;; float64 _maxLinearAcceleration
    8
    ;; float64 _maxRotationalAcceleration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _originator
       (write-long (length _originator) s) (princ _originator s)
     ;; float64 _maxLinearVelocity
       (sys::poke _maxLinearVelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _maxRotationalVelocity
       (sys::poke _maxRotationalVelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _maxLinearAcceleration
       (sys::poke _maxLinearAcceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _maxRotationalAcceleration
       (sys::poke _maxRotationalAcceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _originator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _originator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _maxLinearVelocity
     (setq _maxLinearVelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _maxRotationalVelocity
     (setq _maxRotationalVelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _maxLinearAcceleration
     (setq _maxLinearAcceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _maxRotationalAcceleration
     (setq _maxRotationalAcceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::LabeledControllerPoseSettings :md5sum-) "693211d9c36a5f2d5e074080ca79820b")
(setf (get nasa_r2_common_msgs::LabeledControllerPoseSettings :datatype-) "nasa_r2_common_msgs/LabeledControllerPoseSettings")
(setf (get nasa_r2_common_msgs::LabeledControllerPoseSettings :definition-)
      "string originator
float64 maxLinearVelocity
float64 maxRotationalVelocity
float64 maxLinearAcceleration
float64 maxRotationalAcceleration

")



(provide :nasa_r2_common_msgs/LabeledControllerPoseSettings "693211d9c36a5f2d5e074080ca79820b")


