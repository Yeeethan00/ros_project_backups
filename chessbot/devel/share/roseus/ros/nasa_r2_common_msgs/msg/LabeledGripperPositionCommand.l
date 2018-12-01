;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::LabeledGripperPositionCommand)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'LabeledGripperPositionCommand (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::LABELEDGRIPPERPOSITIONCOMMAND")
  (make-package "NASA_R2_COMMON_MSGS::LABELEDGRIPPERPOSITIONCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude LabeledGripperPositionCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nasa_r2_common_msgs::LabeledGripperPositionCommand
  :super ros::object
  :slots (_header _originator _name _setpoint _command _force _dutyCycle ))

(defmethod nasa_r2_common_msgs::LabeledGripperPositionCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:originator __originator) "")
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:setpoint __setpoint) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:command __command) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:force __force) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dutyCycle __dutyCycle) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _originator (string __originator))
   (setq _name __name)
   (setq _setpoint __setpoint)
   (setq _command __command)
   (setq _force __force)
   (setq _dutyCycle __dutyCycle)
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
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:setpoint
   (&optional __setpoint)
   (if __setpoint (setq _setpoint __setpoint)) _setpoint)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:dutyCycle
   (&optional __dutyCycle)
   (if __dutyCycle (setq _dutyCycle __dutyCycle)) _dutyCycle)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _originator
    4 (length _originator)
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; string[] _setpoint
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _setpoint)) 4
    ;; string[] _command
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _command)) 4
    ;; float64[] _force
    (* 8    (length _force)) 4
    ;; uint16[] _dutyCycle
    (* 2    (length _dutyCycle)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _originator
       (write-long (length _originator) s) (princ _originator s)
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _setpoint
     (write-long (length _setpoint) s)
     (dolist (elem _setpoint)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _command
     (write-long (length _command) s)
     (dolist (elem _command)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _force
     (write-long (length _force) s)
     (dotimes (i (length _force))
       (sys::poke (elt _force i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint16[] _dutyCycle
     (write-long (length _dutyCycle) s)
     (dotimes (i (length _dutyCycle))
       (write-word (elt _dutyCycle i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _originator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _originator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _setpoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _setpoint (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _setpoint i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _command
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _command (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _command i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _force
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _force (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _force i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint16[] _dutyCycle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dutyCycle (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _dutyCycle i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::LabeledGripperPositionCommand :md5sum-) "cdc758be1e885c351a0d055826094942")
(setf (get nasa_r2_common_msgs::LabeledGripperPositionCommand :datatype-) "nasa_r2_common_msgs/LabeledGripperPositionCommand")
(setf (get nasa_r2_common_msgs::LabeledGripperPositionCommand :definition-)
      "Header header
string originator
string[] name
string[] setpoint
string[] command
float64[] force
uint16[] dutyCycle

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



(provide :nasa_r2_common_msgs/LabeledGripperPositionCommand "cdc758be1e885c351a0d055826094942")


