;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::ControllerPoseSettings)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'ControllerPoseSettings (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::CONTROLLERPOSESETTINGS")
  (make-package "NASA_R2_COMMON_MSGS::CONTROLLERPOSESETTINGS"))

(in-package "ROS")
;;//! \htmlinclude ControllerPoseSettings.msg.html


(defclass nasa_r2_common_msgs::ControllerPoseSettings
  :super ros::object
  :slots (_maxLinearVelocity _maxRotationalVelocity _maxLinearAcceleration _maxRotationalAcceleration ))

(defmethod nasa_r2_common_msgs::ControllerPoseSettings
  (:init
   (&key
    ((:maxLinearVelocity __maxLinearVelocity) 0.0)
    ((:maxRotationalVelocity __maxRotationalVelocity) 0.0)
    ((:maxLinearAcceleration __maxLinearAcceleration) 0.0)
    ((:maxRotationalAcceleration __maxRotationalAcceleration) 0.0)
    )
   (send-super :init)
   (setq _maxLinearVelocity (float __maxLinearVelocity))
   (setq _maxRotationalVelocity (float __maxRotationalVelocity))
   (setq _maxLinearAcceleration (float __maxLinearAcceleration))
   (setq _maxRotationalAcceleration (float __maxRotationalAcceleration))
   self)
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

(setf (get nasa_r2_common_msgs::ControllerPoseSettings :md5sum-) "f62b594a8f4b5a5afec86445f0b7a4f2")
(setf (get nasa_r2_common_msgs::ControllerPoseSettings :datatype-) "nasa_r2_common_msgs/ControllerPoseSettings")
(setf (get nasa_r2_common_msgs::ControllerPoseSettings :definition-)
      "float64 maxLinearVelocity
float64 maxRotationalVelocity
float64 maxLinearAcceleration
float64 maxRotationalAcceleration

")



(provide :nasa_r2_common_msgs/ControllerPoseSettings "f62b594a8f4b5a5afec86445f0b7a4f2")


