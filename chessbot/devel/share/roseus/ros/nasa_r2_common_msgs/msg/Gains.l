;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::Gains)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'Gains (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::GAINS")
  (make-package "NASA_R2_COMMON_MSGS::GAINS"))

(in-package "ROS")
;;//! \htmlinclude Gains.msg.html


(defclass nasa_r2_common_msgs::Gains
  :super ros::object
  :slots (_joint_names _naturalFreq _dampingRatio _K _D _I _windupLimit ))

(defmethod nasa_r2_common_msgs::Gains
  (:init
   (&key
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:naturalFreq __naturalFreq) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dampingRatio __dampingRatio) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:K __K) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:D __D) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:I __I) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:windupLimit __windupLimit) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_names __joint_names)
   (setq _naturalFreq __naturalFreq)
   (setq _dampingRatio __dampingRatio)
   (setq _K __K)
   (setq _D __D)
   (setq _I __I)
   (setq _windupLimit __windupLimit)
   self)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:naturalFreq
   (&optional __naturalFreq)
   (if __naturalFreq (setq _naturalFreq __naturalFreq)) _naturalFreq)
  (:dampingRatio
   (&optional __dampingRatio)
   (if __dampingRatio (setq _dampingRatio __dampingRatio)) _dampingRatio)
  (:K
   (&optional __K)
   (if __K (setq _K __K)) _K)
  (:D
   (&optional __D)
   (if __D (setq _D __D)) _D)
  (:I
   (&optional __I)
   (if __I (setq _I __I)) _I)
  (:windupLimit
   (&optional __windupLimit)
   (if __windupLimit (setq _windupLimit __windupLimit)) _windupLimit)
  (:serialization-length
   ()
   (+
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float64[] _naturalFreq
    (* 8    (length _naturalFreq)) 4
    ;; float64[] _dampingRatio
    (* 8    (length _dampingRatio)) 4
    ;; float64[] _K
    (* 8    (length _K)) 4
    ;; float64[] _D
    (* 8    (length _D)) 4
    ;; float64[] _I
    (* 8    (length _I)) 4
    ;; float64[] _windupLimit
    (* 8    (length _windupLimit)) 4
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
     ;; float64[] _naturalFreq
     (write-long (length _naturalFreq) s)
     (dotimes (i (length _naturalFreq))
       (sys::poke (elt _naturalFreq i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _dampingRatio
     (write-long (length _dampingRatio) s)
     (dotimes (i (length _dampingRatio))
       (sys::poke (elt _dampingRatio i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _K
     (write-long (length _K) s)
     (dotimes (i (length _K))
       (sys::poke (elt _K i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _D
     (write-long (length _D) s)
     (dotimes (i (length _D))
       (sys::poke (elt _D i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _I
     (write-long (length _I) s)
     (dotimes (i (length _I))
       (sys::poke (elt _I i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _windupLimit
     (write-long (length _windupLimit) s)
     (dotimes (i (length _windupLimit))
       (sys::poke (elt _windupLimit i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64[] _naturalFreq
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _naturalFreq (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _naturalFreq i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _dampingRatio
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dampingRatio (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dampingRatio i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _K
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _K (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _K i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _D (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _D i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _I
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _I (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _I i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _windupLimit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _windupLimit (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _windupLimit i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::Gains :md5sum-) "f78899cbb8067fadfd895405ba5d6742")
(setf (get nasa_r2_common_msgs::Gains :datatype-) "nasa_r2_common_msgs/Gains")
(setf (get nasa_r2_common_msgs::Gains :definition-)
      "string[] joint_names
float64[] naturalFreq
float64[] dampingRatio
float64[] K
float64[] D
float64[] I
float64[] windupLimit

")



(provide :nasa_r2_common_msgs/Gains "f78899cbb8067fadfd895405ba5d6742")


