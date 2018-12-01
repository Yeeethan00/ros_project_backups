;; Auto-generated. Do not edit!


(when (boundp 'my_sensor::Light)
  (if (not (find-package "MY_SENSOR"))
    (make-package "MY_SENSOR"))
  (shadow 'Light (find-package "MY_SENSOR")))
(unless (find-package "MY_SENSOR::LIGHT")
  (make-package "MY_SENSOR::LIGHT"))
(unless (find-package "MY_SENSOR::LIGHTREQUEST")
  (make-package "MY_SENSOR::LIGHTREQUEST"))
(unless (find-package "MY_SENSOR::LIGHTRESPONSE")
  (make-package "MY_SENSOR::LIGHTRESPONSE"))

(in-package "ROS")





(defclass my_sensor::LightRequest
  :super ros::object
  :slots (_on ))

(defmethod my_sensor::LightRequest
  (:init
   (&key
    ((:on __on) nil)
    )
   (send-super :init)
   (setq _on __on)
   self)
  (:on
   (&optional __on)
   (if __on (setq _on __on)) _on)
  (:serialization-length
   ()
   (+
    ;; bool _on
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _on
       (if _on (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _on
     (setq _on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_sensor::LightResponse
  :super ros::object
  :slots (_status ))

(defmethod my_sensor::LightResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_sensor::Light
  :super ros::object
  :slots ())

(setf (get my_sensor::Light :md5sum-) "a8e1711976dcda1b8b978eee81e85498")
(setf (get my_sensor::Light :datatype-) "my_sensor/Light")
(setf (get my_sensor::Light :request) my_sensor::LightRequest)
(setf (get my_sensor::Light :response) my_sensor::LightResponse)

(defmethod my_sensor::LightRequest
  (:response () (instance my_sensor::LightResponse :init)))

(setf (get my_sensor::LightRequest :md5sum-) "a8e1711976dcda1b8b978eee81e85498")
(setf (get my_sensor::LightRequest :datatype-) "my_sensor/LightRequest")
(setf (get my_sensor::LightRequest :definition-)
      "bool on
---
bool status

")

(setf (get my_sensor::LightResponse :md5sum-) "a8e1711976dcda1b8b978eee81e85498")
(setf (get my_sensor::LightResponse :datatype-) "my_sensor/LightResponse")
(setf (get my_sensor::LightResponse :definition-)
      "bool on
---
bool status

")



(provide :my_sensor/Light "a8e1711976dcda1b8b978eee81e85498")


