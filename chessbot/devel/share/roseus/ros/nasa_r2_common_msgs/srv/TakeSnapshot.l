;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::TakeSnapshot)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'TakeSnapshot (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::TAKESNAPSHOT")
  (make-package "NASA_R2_COMMON_MSGS::TAKESNAPSHOT"))
(unless (find-package "NASA_R2_COMMON_MSGS::TAKESNAPSHOTREQUEST")
  (make-package "NASA_R2_COMMON_MSGS::TAKESNAPSHOTREQUEST"))
(unless (find-package "NASA_R2_COMMON_MSGS::TAKESNAPSHOTRESPONSE")
  (make-package "NASA_R2_COMMON_MSGS::TAKESNAPSHOTRESPONSE"))

(in-package "ROS")





(defclass nasa_r2_common_msgs::TakeSnapshotRequest
  :super ros::object
  :slots (_cmd ))

(defmethod nasa_r2_common_msgs::TakeSnapshotRequest
  (:init
   (&key
    ((:cmd __cmd) nil)
    )
   (send-super :init)
   (setq _cmd __cmd)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; bool _cmd
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _cmd
       (if _cmd (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _cmd
     (setq _cmd (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass nasa_r2_common_msgs::TakeSnapshotResponse
  :super ros::object
  :slots (_result ))

(defmethod nasa_r2_common_msgs::TakeSnapshotResponse
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

(defclass nasa_r2_common_msgs::TakeSnapshot
  :super ros::object
  :slots ())

(setf (get nasa_r2_common_msgs::TakeSnapshot :md5sum-) "e8c32298170b230d5efde1ef2dc16bd2")
(setf (get nasa_r2_common_msgs::TakeSnapshot :datatype-) "nasa_r2_common_msgs/TakeSnapshot")
(setf (get nasa_r2_common_msgs::TakeSnapshot :request) nasa_r2_common_msgs::TakeSnapshotRequest)
(setf (get nasa_r2_common_msgs::TakeSnapshot :response) nasa_r2_common_msgs::TakeSnapshotResponse)

(defmethod nasa_r2_common_msgs::TakeSnapshotRequest
  (:response () (instance nasa_r2_common_msgs::TakeSnapshotResponse :init)))

(setf (get nasa_r2_common_msgs::TakeSnapshotRequest :md5sum-) "e8c32298170b230d5efde1ef2dc16bd2")
(setf (get nasa_r2_common_msgs::TakeSnapshotRequest :datatype-) "nasa_r2_common_msgs/TakeSnapshotRequest")
(setf (get nasa_r2_common_msgs::TakeSnapshotRequest :definition-)
      "bool cmd
---
bool result

")

(setf (get nasa_r2_common_msgs::TakeSnapshotResponse :md5sum-) "e8c32298170b230d5efde1ef2dc16bd2")
(setf (get nasa_r2_common_msgs::TakeSnapshotResponse :datatype-) "nasa_r2_common_msgs/TakeSnapshotResponse")
(setf (get nasa_r2_common_msgs::TakeSnapshotResponse :definition-)
      "bool cmd
---
bool result

")



(provide :nasa_r2_common_msgs/TakeSnapshot "e8c32298170b230d5efde1ef2dc16bd2")


