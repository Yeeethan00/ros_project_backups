;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::CommandStatus)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'CommandStatus (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::COMMANDSTATUS")
  (make-package "NASA_R2_COMMON_MSGS::COMMANDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude CommandStatus.msg.html


(defclass nasa_r2_common_msgs::CommandStatus
  :super ros::object
  :slots (_success _status ))

(defmethod nasa_r2_common_msgs::CommandStatus
  (:init
   (&key
    ((:success __success) nil)
    ((:status __status) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _status (string __status))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::CommandStatus :md5sum-) "38b8954d32a849f31d78416b12bff5d1")
(setf (get nasa_r2_common_msgs::CommandStatus :datatype-) "nasa_r2_common_msgs/CommandStatus")
(setf (get nasa_r2_common_msgs::CommandStatus :definition-)
      "bool success
string status

")



(provide :nasa_r2_common_msgs/CommandStatus "38b8954d32a849f31d78416b12bff5d1")


