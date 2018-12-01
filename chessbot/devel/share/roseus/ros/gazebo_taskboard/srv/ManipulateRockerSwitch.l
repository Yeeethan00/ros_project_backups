;; Auto-generated. Do not edit!


(when (boundp 'gazebo_taskboard::ManipulateRockerSwitch)
  (if (not (find-package "GAZEBO_TASKBOARD"))
    (make-package "GAZEBO_TASKBOARD"))
  (shadow 'ManipulateRockerSwitch (find-package "GAZEBO_TASKBOARD")))
(unless (find-package "GAZEBO_TASKBOARD::MANIPULATEROCKERSWITCH")
  (make-package "GAZEBO_TASKBOARD::MANIPULATEROCKERSWITCH"))
(unless (find-package "GAZEBO_TASKBOARD::MANIPULATEROCKERSWITCHREQUEST")
  (make-package "GAZEBO_TASKBOARD::MANIPULATEROCKERSWITCHREQUEST"))
(unless (find-package "GAZEBO_TASKBOARD::MANIPULATEROCKERSWITCHRESPONSE")
  (make-package "GAZEBO_TASKBOARD::MANIPULATEROCKERSWITCHRESPONSE"))

(in-package "ROS")





(defclass gazebo_taskboard::ManipulateRockerSwitchRequest
  :super ros::object
  :slots (_torque _duration ))

(defmethod gazebo_taskboard::ManipulateRockerSwitchRequest
  (:init
   (&key
    ((:torque __torque) 0.0)
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _torque (float __torque))
   (setq _duration (float __duration))
   self)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; float64 _torque
    8
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _torque
       (sys::poke _torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _torque
     (setq _torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass gazebo_taskboard::ManipulateRockerSwitchResponse
  :super ros::object
  :slots (_ok ))

(defmethod gazebo_taskboard::ManipulateRockerSwitchResponse
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

(defclass gazebo_taskboard::ManipulateRockerSwitch
  :super ros::object
  :slots ())

(setf (get gazebo_taskboard::ManipulateRockerSwitch :md5sum-) "9edd0381c5449d6b11bbee9496c6718d")
(setf (get gazebo_taskboard::ManipulateRockerSwitch :datatype-) "gazebo_taskboard/ManipulateRockerSwitch")
(setf (get gazebo_taskboard::ManipulateRockerSwitch :request) gazebo_taskboard::ManipulateRockerSwitchRequest)
(setf (get gazebo_taskboard::ManipulateRockerSwitch :response) gazebo_taskboard::ManipulateRockerSwitchResponse)

(defmethod gazebo_taskboard::ManipulateRockerSwitchRequest
  (:response () (instance gazebo_taskboard::ManipulateRockerSwitchResponse :init)))

(setf (get gazebo_taskboard::ManipulateRockerSwitchRequest :md5sum-) "9edd0381c5449d6b11bbee9496c6718d")
(setf (get gazebo_taskboard::ManipulateRockerSwitchRequest :datatype-) "gazebo_taskboard/ManipulateRockerSwitchRequest")
(setf (get gazebo_taskboard::ManipulateRockerSwitchRequest :definition-)
      "float64 torque
float64 duration
---
bool ok

")

(setf (get gazebo_taskboard::ManipulateRockerSwitchResponse :md5sum-) "9edd0381c5449d6b11bbee9496c6718d")
(setf (get gazebo_taskboard::ManipulateRockerSwitchResponse :datatype-) "gazebo_taskboard/ManipulateRockerSwitchResponse")
(setf (get gazebo_taskboard::ManipulateRockerSwitchResponse :definition-)
      "float64 torque
float64 duration
---
bool ok

")



(provide :gazebo_taskboard/ManipulateRockerSwitch "9edd0381c5449d6b11bbee9496c6718d")


