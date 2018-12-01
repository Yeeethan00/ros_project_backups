;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::TorsoStatus)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'TorsoStatus (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::TORSOSTATUS")
  (make-package "NASA_R2_COMMON_MSGS::TORSOSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TorsoStatus.msg.html


(defclass nasa_r2_common_msgs::TorsoStatus
  :super ros::object
  :slots (_leftarm _rightarm _neck _lefthand _righthand _waist ))

(defmethod nasa_r2_common_msgs::TorsoStatus
  (:init
   (&key
    ((:leftarm __leftarm) "")
    ((:rightarm __rightarm) "")
    ((:neck __neck) "")
    ((:lefthand __lefthand) "")
    ((:righthand __righthand) "")
    ((:waist __waist) "")
    )
   (send-super :init)
   (setq _leftarm (string __leftarm))
   (setq _rightarm (string __rightarm))
   (setq _neck (string __neck))
   (setq _lefthand (string __lefthand))
   (setq _righthand (string __righthand))
   (setq _waist (string __waist))
   self)
  (:leftarm
   (&optional __leftarm)
   (if __leftarm (setq _leftarm __leftarm)) _leftarm)
  (:rightarm
   (&optional __rightarm)
   (if __rightarm (setq _rightarm __rightarm)) _rightarm)
  (:neck
   (&optional __neck)
   (if __neck (setq _neck __neck)) _neck)
  (:lefthand
   (&optional __lefthand)
   (if __lefthand (setq _lefthand __lefthand)) _lefthand)
  (:righthand
   (&optional __righthand)
   (if __righthand (setq _righthand __righthand)) _righthand)
  (:waist
   (&optional __waist)
   (if __waist (setq _waist __waist)) _waist)
  (:serialization-length
   ()
   (+
    ;; string _leftarm
    4 (length _leftarm)
    ;; string _rightarm
    4 (length _rightarm)
    ;; string _neck
    4 (length _neck)
    ;; string _lefthand
    4 (length _lefthand)
    ;; string _righthand
    4 (length _righthand)
    ;; string _waist
    4 (length _waist)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _leftarm
       (write-long (length _leftarm) s) (princ _leftarm s)
     ;; string _rightarm
       (write-long (length _rightarm) s) (princ _rightarm s)
     ;; string _neck
       (write-long (length _neck) s) (princ _neck s)
     ;; string _lefthand
       (write-long (length _lefthand) s) (princ _lefthand s)
     ;; string _righthand
       (write-long (length _righthand) s) (princ _righthand s)
     ;; string _waist
       (write-long (length _waist) s) (princ _waist s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _leftarm
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _leftarm (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _rightarm
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rightarm (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _neck
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _neck (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _lefthand
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lefthand (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _righthand
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _righthand (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _waist
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _waist (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::TorsoStatus :md5sum-) "2334ce336aad886ccb87a294113ed892")
(setf (get nasa_r2_common_msgs::TorsoStatus :datatype-) "nasa_r2_common_msgs/TorsoStatus")
(setf (get nasa_r2_common_msgs::TorsoStatus :definition-)
      "string leftarm
string rightarm
string neck
string lefthand
string righthand
string waist

")



(provide :nasa_r2_common_msgs/TorsoStatus "2334ce336aad886ccb87a294113ed892")


