;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::LabeledControllerJointSettings)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'LabeledControllerJointSettings (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::LABELEDCONTROLLERJOINTSETTINGS")
  (make-package "NASA_R2_COMMON_MSGS::LABELEDCONTROLLERJOINTSETTINGS"))

(in-package "ROS")
;;//! \htmlinclude LabeledControllerJointSettings.msg.html


(defclass nasa_r2_common_msgs::LabeledControllerJointSettings
  :super ros::object
  :slots (_originator _joint_names _jointVelocityLimits _jointAccelerationLimits ))

(defmethod nasa_r2_common_msgs::LabeledControllerJointSettings
  (:init
   (&key
    ((:originator __originator) "")
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:jointVelocityLimits __jointVelocityLimits) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:jointAccelerationLimits __jointAccelerationLimits) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _originator (string __originator))
   (setq _joint_names __joint_names)
   (setq _jointVelocityLimits __jointVelocityLimits)
   (setq _jointAccelerationLimits __jointAccelerationLimits)
   self)
  (:originator
   (&optional __originator)
   (if __originator (setq _originator __originator)) _originator)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:jointVelocityLimits
   (&optional __jointVelocityLimits)
   (if __jointVelocityLimits (setq _jointVelocityLimits __jointVelocityLimits)) _jointVelocityLimits)
  (:jointAccelerationLimits
   (&optional __jointAccelerationLimits)
   (if __jointAccelerationLimits (setq _jointAccelerationLimits __jointAccelerationLimits)) _jointAccelerationLimits)
  (:serialization-length
   ()
   (+
    ;; string _originator
    4 (length _originator)
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float64[] _jointVelocityLimits
    (* 8    (length _jointVelocityLimits)) 4
    ;; float64[] _jointAccelerationLimits
    (* 8    (length _jointAccelerationLimits)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _originator
       (write-long (length _originator) s) (princ _originator s)
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _jointVelocityLimits
     (write-long (length _jointVelocityLimits) s)
     (dotimes (i (length _jointVelocityLimits))
       (sys::poke (elt _jointVelocityLimits i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _jointAccelerationLimits
     (write-long (length _jointAccelerationLimits) s)
     (dotimes (i (length _jointAccelerationLimits))
       (sys::poke (elt _jointAccelerationLimits i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _originator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _originator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _jointVelocityLimits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _jointVelocityLimits (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _jointVelocityLimits i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _jointAccelerationLimits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _jointAccelerationLimits (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _jointAccelerationLimits i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::LabeledControllerJointSettings :md5sum-) "24daa103f09600d0728cbef04caeaa3a")
(setf (get nasa_r2_common_msgs::LabeledControllerJointSettings :datatype-) "nasa_r2_common_msgs/LabeledControllerJointSettings")
(setf (get nasa_r2_common_msgs::LabeledControllerJointSettings :definition-)
      "string originator
string[] joint_names
float64[] jointVelocityLimits
float64[] jointAccelerationLimits

")



(provide :nasa_r2_common_msgs/LabeledControllerJointSettings "24daa103f09600d0728cbef04caeaa3a")


