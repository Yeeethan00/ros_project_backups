;; Auto-generated. Do not edit!


(when (boundp 'gazebo_taskboard::ManipulateNumPad)
  (if (not (find-package "GAZEBO_TASKBOARD"))
    (make-package "GAZEBO_TASKBOARD"))
  (shadow 'ManipulateNumPad (find-package "GAZEBO_TASKBOARD")))
(unless (find-package "GAZEBO_TASKBOARD::MANIPULATENUMPAD")
  (make-package "GAZEBO_TASKBOARD::MANIPULATENUMPAD"))
(unless (find-package "GAZEBO_TASKBOARD::MANIPULATENUMPADREQUEST")
  (make-package "GAZEBO_TASKBOARD::MANIPULATENUMPADREQUEST"))
(unless (find-package "GAZEBO_TASKBOARD::MANIPULATENUMPADRESPONSE")
  (make-package "GAZEBO_TASKBOARD::MANIPULATENUMPADRESPONSE"))

(in-package "ROS")





(defclass gazebo_taskboard::ManipulateNumPadRequest
  :super ros::object
  :slots (_index _force _duration ))

(defmethod gazebo_taskboard::ManipulateNumPadRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:force __force) 0.0)
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _force (float __force))
   (setq _duration (float __duration))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; float64 _force
    8
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;; float64 _force
       (sys::poke _force (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _force
     (setq _force (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass gazebo_taskboard::ManipulateNumPadResponse
  :super ros::object
  :slots (_ok ))

(defmethod gazebo_taskboard::ManipulateNumPadResponse
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

(defclass gazebo_taskboard::ManipulateNumPad
  :super ros::object
  :slots ())

(setf (get gazebo_taskboard::ManipulateNumPad :md5sum-) "b8003f72ab0847f72cc48d810ab5c4e4")
(setf (get gazebo_taskboard::ManipulateNumPad :datatype-) "gazebo_taskboard/ManipulateNumPad")
(setf (get gazebo_taskboard::ManipulateNumPad :request) gazebo_taskboard::ManipulateNumPadRequest)
(setf (get gazebo_taskboard::ManipulateNumPad :response) gazebo_taskboard::ManipulateNumPadResponse)

(defmethod gazebo_taskboard::ManipulateNumPadRequest
  (:response () (instance gazebo_taskboard::ManipulateNumPadResponse :init)))

(setf (get gazebo_taskboard::ManipulateNumPadRequest :md5sum-) "b8003f72ab0847f72cc48d810ab5c4e4")
(setf (get gazebo_taskboard::ManipulateNumPadRequest :datatype-) "gazebo_taskboard/ManipulateNumPadRequest")
(setf (get gazebo_taskboard::ManipulateNumPadRequest :definition-)
      "int32 index
float64 force
float64 duration
---
bool ok

")

(setf (get gazebo_taskboard::ManipulateNumPadResponse :md5sum-) "b8003f72ab0847f72cc48d810ab5c4e4")
(setf (get gazebo_taskboard::ManipulateNumPadResponse :datatype-) "gazebo_taskboard/ManipulateNumPadResponse")
(setf (get gazebo_taskboard::ManipulateNumPadResponse :definition-)
      "int32 index
float64 force
float64 duration
---
bool ok

")



(provide :gazebo_taskboard/ManipulateNumPad "b8003f72ab0847f72cc48d810ab5c4e4")


