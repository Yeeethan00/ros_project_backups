;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::TrajectoryMonitorFactors)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'TrajectoryMonitorFactors (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::TRAJECTORYMONITORFACTORS")
  (make-package "NASA_R2_COMMON_MSGS::TRAJECTORYMONITORFACTORS"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryMonitorFactors.msg.html


(defclass nasa_r2_common_msgs::TrajectoryMonitorFactors
  :super ros::object
  :slots (_joint_names _torqueLimitFactors _distanceFactors ))

(defmethod nasa_r2_common_msgs::TrajectoryMonitorFactors
  (:init
   (&key
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:torqueLimitFactors __torqueLimitFactors) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:distanceFactors __distanceFactors) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_names __joint_names)
   (setq _torqueLimitFactors __torqueLimitFactors)
   (setq _distanceFactors __distanceFactors)
   self)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:torqueLimitFactors
   (&optional __torqueLimitFactors)
   (if __torqueLimitFactors (setq _torqueLimitFactors __torqueLimitFactors)) _torqueLimitFactors)
  (:distanceFactors
   (&optional __distanceFactors)
   (if __distanceFactors (setq _distanceFactors __distanceFactors)) _distanceFactors)
  (:serialization-length
   ()
   (+
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float64[] _torqueLimitFactors
    (* 8    (length _torqueLimitFactors)) 4
    ;; float64[] _distanceFactors
    (* 8    (length _distanceFactors)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _torqueLimitFactors
     (write-long (length _torqueLimitFactors) s)
     (dotimes (i (length _torqueLimitFactors))
       (sys::poke (elt _torqueLimitFactors i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _distanceFactors
     (write-long (length _distanceFactors) s)
     (dotimes (i (length _distanceFactors))
       (sys::poke (elt _distanceFactors i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _torqueLimitFactors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _torqueLimitFactors (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _torqueLimitFactors i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _distanceFactors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distanceFactors (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _distanceFactors i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::TrajectoryMonitorFactors :md5sum-) "2e22743ec8c9b84c75edc4b02a6f32a9")
(setf (get nasa_r2_common_msgs::TrajectoryMonitorFactors :datatype-) "nasa_r2_common_msgs/TrajectoryMonitorFactors")
(setf (get nasa_r2_common_msgs::TrajectoryMonitorFactors :definition-)
      "string[] joint_names
float64[] torqueLimitFactors
float64[] distanceFactors

")



(provide :nasa_r2_common_msgs/TrajectoryMonitorFactors "2e22743ec8c9b84c75edc4b02a6f32a9")


