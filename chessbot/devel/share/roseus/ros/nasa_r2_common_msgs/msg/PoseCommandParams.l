;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::PoseCommandParams)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'PoseCommandParams (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::POSECOMMANDPARAMS")
  (make-package "NASA_R2_COMMON_MSGS::POSECOMMANDPARAMS"))

(in-package "ROS")
;;//! \htmlinclude PoseCommandParams.msg.html


(defclass nasa_r2_common_msgs::PoseCommandParams
  :super ros::object
  :slots (_maxLinVel _maxRotVel ))

(defmethod nasa_r2_common_msgs::PoseCommandParams
  (:init
   (&key
    ((:maxLinVel __maxLinVel) 0.0)
    ((:maxRotVel __maxRotVel) 0.0)
    )
   (send-super :init)
   (setq _maxLinVel (float __maxLinVel))
   (setq _maxRotVel (float __maxRotVel))
   self)
  (:maxLinVel
   (&optional __maxLinVel)
   (if __maxLinVel (setq _maxLinVel __maxLinVel)) _maxLinVel)
  (:maxRotVel
   (&optional __maxRotVel)
   (if __maxRotVel (setq _maxRotVel __maxRotVel)) _maxRotVel)
  (:serialization-length
   ()
   (+
    ;; float32 _maxLinVel
    4
    ;; float32 _maxRotVel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _maxLinVel
       (sys::poke _maxLinVel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _maxRotVel
       (sys::poke _maxRotVel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _maxLinVel
     (setq _maxLinVel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _maxRotVel
     (setq _maxRotVel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::PoseCommandParams :md5sum-) "a159026142e288942cb08238d17789db")
(setf (get nasa_r2_common_msgs::PoseCommandParams :datatype-) "nasa_r2_common_msgs/PoseCommandParams")
(setf (get nasa_r2_common_msgs::PoseCommandParams :definition-)
      "float32 maxLinVel
float32 maxRotVel

")



(provide :nasa_r2_common_msgs/PoseCommandParams "a159026142e288942cb08238d17789db")


