;; Auto-generated. Do not edit!


(when (boundp 'rbx2_utils::LaunchProcess)
  (if (not (find-package "RBX2_UTILS"))
    (make-package "RBX2_UTILS"))
  (shadow 'LaunchProcess (find-package "RBX2_UTILS")))
(unless (find-package "RBX2_UTILS::LAUNCHPROCESS")
  (make-package "RBX2_UTILS::LAUNCHPROCESS"))
(unless (find-package "RBX2_UTILS::LAUNCHPROCESSREQUEST")
  (make-package "RBX2_UTILS::LAUNCHPROCESSREQUEST"))
(unless (find-package "RBX2_UTILS::LAUNCHPROCESSRESPONSE")
  (make-package "RBX2_UTILS::LAUNCHPROCESSRESPONSE"))

(in-package "ROS")





(defclass rbx2_utils::LaunchProcessRequest
  :super ros::object
  :slots (_command ))

(defmethod rbx2_utils::LaunchProcessRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rbx2_utils::LaunchProcessResponse
  :super ros::object
  :slots (_process_id ))

(defmethod rbx2_utils::LaunchProcessResponse
  (:init
   (&key
    ((:process_id __process_id) "")
    )
   (send-super :init)
   (setq _process_id (string __process_id))
   self)
  (:process_id
   (&optional __process_id)
   (if __process_id (setq _process_id __process_id)) _process_id)
  (:serialization-length
   ()
   (+
    ;; string _process_id
    4 (length _process_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _process_id
       (write-long (length _process_id) s) (princ _process_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _process_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _process_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rbx2_utils::LaunchProcess
  :super ros::object
  :slots ())

(setf (get rbx2_utils::LaunchProcess :md5sum-) "15f55f5751b44d06bcad0321b1a88466")
(setf (get rbx2_utils::LaunchProcess :datatype-) "rbx2_utils/LaunchProcess")
(setf (get rbx2_utils::LaunchProcess :request) rbx2_utils::LaunchProcessRequest)
(setf (get rbx2_utils::LaunchProcess :response) rbx2_utils::LaunchProcessResponse)

(defmethod rbx2_utils::LaunchProcessRequest
  (:response () (instance rbx2_utils::LaunchProcessResponse :init)))

(setf (get rbx2_utils::LaunchProcessRequest :md5sum-) "15f55f5751b44d06bcad0321b1a88466")
(setf (get rbx2_utils::LaunchProcessRequest :datatype-) "rbx2_utils/LaunchProcessRequest")
(setf (get rbx2_utils::LaunchProcessRequest :definition-)
      "string command
---
string process_id

")

(setf (get rbx2_utils::LaunchProcessResponse :md5sum-) "15f55f5751b44d06bcad0321b1a88466")
(setf (get rbx2_utils::LaunchProcessResponse :datatype-) "rbx2_utils/LaunchProcessResponse")
(setf (get rbx2_utils::LaunchProcessResponse :definition-)
      "string command
---
string process_id

")



(provide :rbx2_utils/LaunchProcess "15f55f5751b44d06bcad0321b1a88466")


