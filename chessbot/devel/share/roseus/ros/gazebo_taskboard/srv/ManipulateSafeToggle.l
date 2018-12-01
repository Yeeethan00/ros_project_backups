;; Auto-generated. Do not edit!


(when (boundp 'gazebo_taskboard::ManipulateSafeToggle)
  (if (not (find-package "GAZEBO_TASKBOARD"))
    (make-package "GAZEBO_TASKBOARD"))
  (shadow 'ManipulateSafeToggle (find-package "GAZEBO_TASKBOARD")))
(unless (find-package "GAZEBO_TASKBOARD::MANIPULATESAFETOGGLE")
  (make-package "GAZEBO_TASKBOARD::MANIPULATESAFETOGGLE"))
(unless (find-package "GAZEBO_TASKBOARD::MANIPULATESAFETOGGLEREQUEST")
  (make-package "GAZEBO_TASKBOARD::MANIPULATESAFETOGGLEREQUEST"))
(unless (find-package "GAZEBO_TASKBOARD::MANIPULATESAFETOGGLERESPONSE")
  (make-package "GAZEBO_TASKBOARD::MANIPULATESAFETOGGLERESPONSE"))

(in-package "ROS")





(defclass gazebo_taskboard::ManipulateSafeToggleRequest
  :super ros::object
  :slots (_index _mode _value _duration ))

(defmethod gazebo_taskboard::ManipulateSafeToggleRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:mode __mode) 0)
    ((:value __value) 0.0)
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _mode (round __mode))
   (setq _value (float __value))
   (setq _duration (float __duration))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; int32 _mode
    4
    ;; float64 _value
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
     ;; int32 _mode
       (write-long _mode s)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass gazebo_taskboard::ManipulateSafeToggleResponse
  :super ros::object
  :slots (_ok ))

(defmethod gazebo_taskboard::ManipulateSafeToggleResponse
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

(defclass gazebo_taskboard::ManipulateSafeToggle
  :super ros::object
  :slots ())

(setf (get gazebo_taskboard::ManipulateSafeToggle :md5sum-) "ae7b68166c28d08616913839674635ad")
(setf (get gazebo_taskboard::ManipulateSafeToggle :datatype-) "gazebo_taskboard/ManipulateSafeToggle")
(setf (get gazebo_taskboard::ManipulateSafeToggle :request) gazebo_taskboard::ManipulateSafeToggleRequest)
(setf (get gazebo_taskboard::ManipulateSafeToggle :response) gazebo_taskboard::ManipulateSafeToggleResponse)

(defmethod gazebo_taskboard::ManipulateSafeToggleRequest
  (:response () (instance gazebo_taskboard::ManipulateSafeToggleResponse :init)))

(setf (get gazebo_taskboard::ManipulateSafeToggleRequest :md5sum-) "ae7b68166c28d08616913839674635ad")
(setf (get gazebo_taskboard::ManipulateSafeToggleRequest :datatype-) "gazebo_taskboard/ManipulateSafeToggleRequest")
(setf (get gazebo_taskboard::ManipulateSafeToggleRequest :definition-)
      "int32 index
int32 mode
float64 value
float64 duration
---
bool ok

")

(setf (get gazebo_taskboard::ManipulateSafeToggleResponse :md5sum-) "ae7b68166c28d08616913839674635ad")
(setf (get gazebo_taskboard::ManipulateSafeToggleResponse :datatype-) "gazebo_taskboard/ManipulateSafeToggleResponse")
(setf (get gazebo_taskboard::ManipulateSafeToggleResponse :definition-)
      "int32 index
int32 mode
float64 value
float64 duration
---
bool ok

")



(provide :gazebo_taskboard/ManipulateSafeToggle "ae7b68166c28d08616913839674635ad")


