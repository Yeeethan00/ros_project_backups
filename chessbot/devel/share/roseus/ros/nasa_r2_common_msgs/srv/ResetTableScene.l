;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::ResetTableScene)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'ResetTableScene (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::RESETTABLESCENE")
  (make-package "NASA_R2_COMMON_MSGS::RESETTABLESCENE"))
(unless (find-package "NASA_R2_COMMON_MSGS::RESETTABLESCENEREQUEST")
  (make-package "NASA_R2_COMMON_MSGS::RESETTABLESCENEREQUEST"))
(unless (find-package "NASA_R2_COMMON_MSGS::RESETTABLESCENERESPONSE")
  (make-package "NASA_R2_COMMON_MSGS::RESETTABLESCENERESPONSE"))

(in-package "ROS")





(defclass nasa_r2_common_msgs::ResetTableSceneRequest
  :super ros::object
  :slots (_reset ))

(defmethod nasa_r2_common_msgs::ResetTableSceneRequest
  (:init
   (&key
    ((:reset __reset) nil)
    )
   (send-super :init)
   (setq _reset __reset)
   self)
  (:reset
   (&optional __reset)
   (if __reset (setq _reset __reset)) _reset)
  (:serialization-length
   ()
   (+
    ;; bool _reset
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reset
       (if _reset (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reset
     (setq _reset (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass nasa_r2_common_msgs::ResetTableSceneResponse
  :super ros::object
  :slots (_result ))

(defmethod nasa_r2_common_msgs::ResetTableSceneResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass nasa_r2_common_msgs::ResetTableScene
  :super ros::object
  :slots ())

(setf (get nasa_r2_common_msgs::ResetTableScene :md5sum-) "c95f6c9db0edf7da4840d218c33352c7")
(setf (get nasa_r2_common_msgs::ResetTableScene :datatype-) "nasa_r2_common_msgs/ResetTableScene")
(setf (get nasa_r2_common_msgs::ResetTableScene :request) nasa_r2_common_msgs::ResetTableSceneRequest)
(setf (get nasa_r2_common_msgs::ResetTableScene :response) nasa_r2_common_msgs::ResetTableSceneResponse)

(defmethod nasa_r2_common_msgs::ResetTableSceneRequest
  (:response () (instance nasa_r2_common_msgs::ResetTableSceneResponse :init)))

(setf (get nasa_r2_common_msgs::ResetTableSceneRequest :md5sum-) "c95f6c9db0edf7da4840d218c33352c7")
(setf (get nasa_r2_common_msgs::ResetTableSceneRequest :datatype-) "nasa_r2_common_msgs/ResetTableSceneRequest")
(setf (get nasa_r2_common_msgs::ResetTableSceneRequest :definition-)
      "bool reset
---
bool result

")

(setf (get nasa_r2_common_msgs::ResetTableSceneResponse :md5sum-) "c95f6c9db0edf7da4840d218c33352c7")
(setf (get nasa_r2_common_msgs::ResetTableSceneResponse :datatype-) "nasa_r2_common_msgs/ResetTableSceneResponse")
(setf (get nasa_r2_common_msgs::ResetTableSceneResponse :definition-)
      "bool reset
---
bool result

")



(provide :nasa_r2_common_msgs/ResetTableScene "c95f6c9db0edf7da4840d218c33352c7")


