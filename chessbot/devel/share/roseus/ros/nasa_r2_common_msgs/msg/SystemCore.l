;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::SystemCore)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'SystemCore (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::SYSTEMCORE")
  (make-package "NASA_R2_COMMON_MSGS::SYSTEMCORE"))

(in-package "ROS")
;;//! \htmlinclude SystemCore.msg.html


(defclass nasa_r2_common_msgs::SystemCore
  :super ros::object
  :slots (_id _speed _load _failure ))

(defmethod nasa_r2_common_msgs::SystemCore
  (:init
   (&key
    ((:id __id) "")
    ((:speed __speed) 0.0)
    ((:load __load) 0.0)
    ((:failure __failure) nil)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _speed (float __speed))
   (setq _load (float __load))
   (setq _failure __failure)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:load
   (&optional __load)
   (if __load (setq _load __load)) _load)
  (:failure
   (&optional __failure)
   (if __failure (setq _failure __failure)) _failure)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; float64 _speed
    8
    ;; float64 _load
    8
    ;; bool _failure
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _load
       (sys::poke _load (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _failure
       (if _failure (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _load
     (setq _load (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _failure
     (setq _failure (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::SystemCore :md5sum-) "f24d56ccce4448beee59c654a367c906")
(setf (get nasa_r2_common_msgs::SystemCore :datatype-) "nasa_r2_common_msgs/SystemCore")
(setf (get nasa_r2_common_msgs::SystemCore :definition-)
      "string       id
float64      speed
float64     load
bool        failure
")



(provide :nasa_r2_common_msgs/SystemCore "f24d56ccce4448beee59c654a367c906")


