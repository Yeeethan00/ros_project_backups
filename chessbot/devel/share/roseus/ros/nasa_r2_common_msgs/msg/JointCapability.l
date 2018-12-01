;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::JointCapability)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'JointCapability (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::JOINTCAPABILITY")
  (make-package "NASA_R2_COMMON_MSGS::JOINTCAPABILITY"))

(in-package "ROS")
;;//! \htmlinclude JointCapability.msg.html


(defclass nasa_r2_common_msgs::JointCapability
  :super ros::object
  :slots (_name _positionLimitMax _positionLimitMin _torqueLimit ))

(defmethod nasa_r2_common_msgs::JointCapability
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:positionLimitMax __positionLimitMax) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:positionLimitMin __positionLimitMin) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:torqueLimit __torqueLimit) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _name __name)
   (setq _positionLimitMax __positionLimitMax)
   (setq _positionLimitMin __positionLimitMin)
   (setq _torqueLimit __torqueLimit)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:positionLimitMax
   (&optional __positionLimitMax)
   (if __positionLimitMax (setq _positionLimitMax __positionLimitMax)) _positionLimitMax)
  (:positionLimitMin
   (&optional __positionLimitMin)
   (if __positionLimitMin (setq _positionLimitMin __positionLimitMin)) _positionLimitMin)
  (:torqueLimit
   (&optional __torqueLimit)
   (if __torqueLimit (setq _torqueLimit __torqueLimit)) _torqueLimit)
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float64[] _positionLimitMax
    (* 8    (length _positionLimitMax)) 4
    ;; float64[] _positionLimitMin
    (* 8    (length _positionLimitMin)) 4
    ;; float64[] _torqueLimit
    (* 8    (length _torqueLimit)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _positionLimitMax
     (write-long (length _positionLimitMax) s)
     (dotimes (i (length _positionLimitMax))
       (sys::poke (elt _positionLimitMax i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _positionLimitMin
     (write-long (length _positionLimitMin) s)
     (dotimes (i (length _positionLimitMin))
       (sys::poke (elt _positionLimitMin i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _torqueLimit
     (write-long (length _torqueLimit) s)
     (dotimes (i (length _torqueLimit))
       (sys::poke (elt _torqueLimit i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _positionLimitMax
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positionLimitMax (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _positionLimitMax i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _positionLimitMin
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positionLimitMin (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _positionLimitMin i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _torqueLimit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _torqueLimit (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _torqueLimit i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::JointCapability :md5sum-) "40d391c05ffb602d44b6aec475271b97")
(setf (get nasa_r2_common_msgs::JointCapability :datatype-) "nasa_r2_common_msgs/JointCapability")
(setf (get nasa_r2_common_msgs::JointCapability :definition-)
      "string[] name
float64[] positionLimitMax
float64[] positionLimitMin
float64[] torqueLimit
")



(provide :nasa_r2_common_msgs/JointCapability "40d391c05ffb602d44b6aec475271b97")


