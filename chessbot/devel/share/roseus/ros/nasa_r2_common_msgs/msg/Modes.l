;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::Modes)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'Modes (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::MODES")
  (make-package "NASA_R2_COMMON_MSGS::MODES"))

(in-package "ROS")
;;//! \htmlinclude Modes.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nasa_r2_common_msgs::Modes
  :super ros::object
  :slots (_header _originator _master _joint_names _supervisor _incumbent _mode ))

(defmethod nasa_r2_common_msgs::Modes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:originator __originator) "")
    ((:master __master) "")
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:supervisor __supervisor) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:incumbent __incumbent) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:mode __mode) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _originator (string __originator))
   (setq _master (string __master))
   (setq _joint_names __joint_names)
   (setq _supervisor __supervisor)
   (setq _incumbent __incumbent)
   (setq _mode __mode)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:originator
   (&optional __originator)
   (if __originator (setq _originator __originator)) _originator)
  (:master
   (&optional __master)
   (if __master (setq _master __master)) _master)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:supervisor
   (&optional __supervisor)
   (if __supervisor (setq _supervisor __supervisor)) _supervisor)
  (:incumbent
   (&optional __incumbent)
   (if __incumbent (setq _incumbent __incumbent)) _incumbent)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _originator
    4 (length _originator)
    ;; string _master
    4 (length _master)
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; string[] _supervisor
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _supervisor)) 4
    ;; string[] _incumbent
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _incumbent)) 4
    ;; string[] _mode
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _mode)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _originator
       (write-long (length _originator) s) (princ _originator s)
     ;; string _master
       (write-long (length _master) s) (princ _master s)
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _supervisor
     (write-long (length _supervisor) s)
     (dolist (elem _supervisor)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _incumbent
     (write-long (length _incumbent) s)
     (dolist (elem _incumbent)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _mode
     (write-long (length _mode) s)
     (dolist (elem _mode)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _originator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _originator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _master
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _master (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _supervisor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _supervisor (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _supervisor i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _incumbent
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _incumbent (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _incumbent i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _mode
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mode (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _mode i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::Modes :md5sum-) "63b389b7faa68c6a12708f1df983f6f3")
(setf (get nasa_r2_common_msgs::Modes :datatype-) "nasa_r2_common_msgs/Modes")
(setf (get nasa_r2_common_msgs::Modes :definition-)
      "Header header
string originator
string master
string[] joint_names
string[] supervisor
string[] incumbent
string[] mode

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :nasa_r2_common_msgs/Modes "63b389b7faa68c6a12708f1df983f6f3")


