;; Auto-generated. Do not edit!


(when (boundp 'gazebo_taskboard::ManipulatePowerCover)
  (if (not (find-package "GAZEBO_TASKBOARD"))
    (make-package "GAZEBO_TASKBOARD"))
  (shadow 'ManipulatePowerCover (find-package "GAZEBO_TASKBOARD")))
(unless (find-package "GAZEBO_TASKBOARD::MANIPULATEPOWERCOVER")
  (make-package "GAZEBO_TASKBOARD::MANIPULATEPOWERCOVER"))
(unless (find-package "GAZEBO_TASKBOARD::MANIPULATEPOWERCOVERREQUEST")
  (make-package "GAZEBO_TASKBOARD::MANIPULATEPOWERCOVERREQUEST"))
(unless (find-package "GAZEBO_TASKBOARD::MANIPULATEPOWERCOVERRESPONSE")
  (make-package "GAZEBO_TASKBOARD::MANIPULATEPOWERCOVERRESPONSE"))

(in-package "ROS")





(defclass gazebo_taskboard::ManipulatePowerCoverRequest
  :super ros::object
  :slots (_angle _duration ))

(defmethod gazebo_taskboard::ManipulatePowerCoverRequest
  (:init
   (&key
    ((:angle __angle) 0.0)
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   (setq _duration (float __duration))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; float64 _angle
    8
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass gazebo_taskboard::ManipulatePowerCoverResponse
  :super ros::object
  :slots (_ok ))

(defmethod gazebo_taskboard::ManipulatePowerCoverResponse
  (:init
   (&key
    ((:ok __ok) nil)
    )
   (send-super :init)
   (setq _ok __ok)
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass gazebo_taskboard::ManipulatePowerCover
  :super ros::object
  :slots ())

(setf (get gazebo_taskboard::ManipulatePowerCover :md5sum-) "f5cdf7033f402cd788e5611f14b40b32")
(setf (get gazebo_taskboard::ManipulatePowerCover :datatype-) "gazebo_taskboard/ManipulatePowerCover")
(setf (get gazebo_taskboard::ManipulatePowerCover :request) gazebo_taskboard::ManipulatePowerCoverRequest)
(setf (get gazebo_taskboard::ManipulatePowerCover :response) gazebo_taskboard::ManipulatePowerCoverResponse)

(defmethod gazebo_taskboard::ManipulatePowerCoverRequest
  (:response () (instance gazebo_taskboard::ManipulatePowerCoverResponse :init)))

(setf (get gazebo_taskboard::ManipulatePowerCoverRequest :md5sum-) "f5cdf7033f402cd788e5611f14b40b32")
(setf (get gazebo_taskboard::ManipulatePowerCoverRequest :datatype-) "gazebo_taskboard/ManipulatePowerCoverRequest")
(setf (get gazebo_taskboard::ManipulatePowerCoverRequest :definition-)
      "float64 angle
float64 duration
---
bool ok

")

(setf (get gazebo_taskboard::ManipulatePowerCoverResponse :md5sum-) "f5cdf7033f402cd788e5611f14b40b32")
(setf (get gazebo_taskboard::ManipulatePowerCoverResponse :datatype-) "gazebo_taskboard/ManipulatePowerCoverResponse")
(setf (get gazebo_taskboard::ManipulatePowerCoverResponse :definition-)
      "float64 angle
float64 duration
---
bool ok

")



(provide :gazebo_taskboard/ManipulatePowerCover "f5cdf7033f402cd788e5611f14b40b32")


