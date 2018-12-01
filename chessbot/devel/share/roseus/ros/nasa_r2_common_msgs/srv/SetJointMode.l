;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::SetJointMode)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'SetJointMode (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::SETJOINTMODE")
  (make-package "NASA_R2_COMMON_MSGS::SETJOINTMODE"))
(unless (find-package "NASA_R2_COMMON_MSGS::SETJOINTMODEREQUEST")
  (make-package "NASA_R2_COMMON_MSGS::SETJOINTMODEREQUEST"))
(unless (find-package "NASA_R2_COMMON_MSGS::SETJOINTMODERESPONSE")
  (make-package "NASA_R2_COMMON_MSGS::SETJOINTMODERESPONSE"))

(in-package "ROS")





(defclass nasa_r2_common_msgs::SetJointModeRequest
  :super ros::object
  :slots (_arm_name ))

(defmethod nasa_r2_common_msgs::SetJointModeRequest
  (:init
   (&key
    ((:arm_name __arm_name) "")
    )
   (send-super :init)
   (setq _arm_name (string __arm_name))
   self)
  (:arm_name
   (&optional __arm_name)
   (if __arm_name (setq _arm_name __arm_name)) _arm_name)
  (:serialization-length
   ()
   (+
    ;; string _arm_name
    4 (length _arm_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _arm_name
       (write-long (length _arm_name) s) (princ _arm_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _arm_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _arm_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nasa_r2_common_msgs::SetJointModeResponse
  :super ros::object
  :slots (_result ))

(defmethod nasa_r2_common_msgs::SetJointModeResponse
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

(defclass nasa_r2_common_msgs::SetJointMode
  :super ros::object
  :slots ())

(setf (get nasa_r2_common_msgs::SetJointMode :md5sum-) "37abae7c450f69bbef7c815fd538b275")
(setf (get nasa_r2_common_msgs::SetJointMode :datatype-) "nasa_r2_common_msgs/SetJointMode")
(setf (get nasa_r2_common_msgs::SetJointMode :request) nasa_r2_common_msgs::SetJointModeRequest)
(setf (get nasa_r2_common_msgs::SetJointMode :response) nasa_r2_common_msgs::SetJointModeResponse)

(defmethod nasa_r2_common_msgs::SetJointModeRequest
  (:response () (instance nasa_r2_common_msgs::SetJointModeResponse :init)))

(setf (get nasa_r2_common_msgs::SetJointModeRequest :md5sum-) "37abae7c450f69bbef7c815fd538b275")
(setf (get nasa_r2_common_msgs::SetJointModeRequest :datatype-) "nasa_r2_common_msgs/SetJointModeRequest")
(setf (get nasa_r2_common_msgs::SetJointModeRequest :definition-)
      "string arm_name
---
bool result

")

(setf (get nasa_r2_common_msgs::SetJointModeResponse :md5sum-) "37abae7c450f69bbef7c815fd538b275")
(setf (get nasa_r2_common_msgs::SetJointModeResponse :datatype-) "nasa_r2_common_msgs/SetJointModeResponse")
(setf (get nasa_r2_common_msgs::SetJointModeResponse :definition-)
      "string arm_name
---
bool result

")



(provide :nasa_r2_common_msgs/SetJointMode "37abae7c450f69bbef7c815fd538b275")


