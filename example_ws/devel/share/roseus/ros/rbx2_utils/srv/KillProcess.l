;; Auto-generated. Do not edit!


(when (boundp 'rbx2_utils::KillProcess)
  (if (not (find-package "RBX2_UTILS"))
    (make-package "RBX2_UTILS"))
  (shadow 'KillProcess (find-package "RBX2_UTILS")))
(unless (find-package "RBX2_UTILS::KILLPROCESS")
  (make-package "RBX2_UTILS::KILLPROCESS"))
(unless (find-package "RBX2_UTILS::KILLPROCESSREQUEST")
  (make-package "RBX2_UTILS::KILLPROCESSREQUEST"))
(unless (find-package "RBX2_UTILS::KILLPROCESSRESPONSE")
  (make-package "RBX2_UTILS::KILLPROCESSRESPONSE"))

(in-package "ROS")





(defclass rbx2_utils::KillProcessRequest
  :super ros::object
  :slots (_process_id ))

(defmethod rbx2_utils::KillProcessRequest
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

(defclass rbx2_utils::KillProcessResponse
  :super ros::object
  :slots (_success ))

(defmethod rbx2_utils::KillProcessResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rbx2_utils::KillProcess
  :super ros::object
  :slots ())

(setf (get rbx2_utils::KillProcess :md5sum-) "54319f819462371f5e2b56e424d9b26f")
(setf (get rbx2_utils::KillProcess :datatype-) "rbx2_utils/KillProcess")
(setf (get rbx2_utils::KillProcess :request) rbx2_utils::KillProcessRequest)
(setf (get rbx2_utils::KillProcess :response) rbx2_utils::KillProcessResponse)

(defmethod rbx2_utils::KillProcessRequest
  (:response () (instance rbx2_utils::KillProcessResponse :init)))

(setf (get rbx2_utils::KillProcessRequest :md5sum-) "54319f819462371f5e2b56e424d9b26f")
(setf (get rbx2_utils::KillProcessRequest :datatype-) "rbx2_utils/KillProcessRequest")
(setf (get rbx2_utils::KillProcessRequest :definition-)
      "string process_id
---
bool success


")

(setf (get rbx2_utils::KillProcessResponse :md5sum-) "54319f819462371f5e2b56e424d9b26f")
(setf (get rbx2_utils::KillProcessResponse :datatype-) "rbx2_utils/KillProcessResponse")
(setf (get rbx2_utils::KillProcessResponse :definition-)
      "string process_id
---
bool success


")



(provide :rbx2_utils/KillProcess "54319f819462371f5e2b56e424d9b26f")


