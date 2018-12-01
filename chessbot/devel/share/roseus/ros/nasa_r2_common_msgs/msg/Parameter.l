;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::Parameter)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'Parameter (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::PARAMETER")
  (make-package "NASA_R2_COMMON_MSGS::PARAMETER"))

(in-package "ROS")
;;//! \htmlinclude Parameter.msg.html


(intern "*STRING*" (find-package "NASA_R2_COMMON_MSGS::PARAMETER"))
(shadow '*STRING* (find-package "NASA_R2_COMMON_MSGS::PARAMETER"))
(defconstant nasa_r2_common_msgs::Parameter::*STRING* 0)
(intern "*INT*" (find-package "NASA_R2_COMMON_MSGS::PARAMETER"))
(shadow '*INT* (find-package "NASA_R2_COMMON_MSGS::PARAMETER"))
(defconstant nasa_r2_common_msgs::Parameter::*INT* 1)
(intern "*FLOAT*" (find-package "NASA_R2_COMMON_MSGS::PARAMETER"))
(shadow '*FLOAT* (find-package "NASA_R2_COMMON_MSGS::PARAMETER"))
(defconstant nasa_r2_common_msgs::Parameter::*FLOAT* 2)
(intern "*BOOL*" (find-package "NASA_R2_COMMON_MSGS::PARAMETER"))
(shadow '*BOOL* (find-package "NASA_R2_COMMON_MSGS::PARAMETER"))
(defconstant nasa_r2_common_msgs::Parameter::*BOOL* 3)
(intern "*LIST*" (find-package "NASA_R2_COMMON_MSGS::PARAMETER"))
(shadow '*LIST* (find-package "NASA_R2_COMMON_MSGS::PARAMETER"))
(defconstant nasa_r2_common_msgs::Parameter::*LIST* 4)
(intern "*DICT*" (find-package "NASA_R2_COMMON_MSGS::PARAMETER"))
(shadow '*DICT* (find-package "NASA_R2_COMMON_MSGS::PARAMETER"))
(defconstant nasa_r2_common_msgs::Parameter::*DICT* 5)
(defclass nasa_r2_common_msgs::Parameter
  :super ros::object
  :slots (_key _type _value ))

(defmethod nasa_r2_common_msgs::Parameter
  (:init
   (&key
    ((:key __key) "")
    ((:type __type) 0)
    ((:value __value) "")
    )
   (send-super :init)
   (setq _key (string __key))
   (setq _type (round __type))
   (setq _value (string __value))
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _key
    4 (length _key)
    ;; uint8 _type
    1
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; uint8 _type
       (write-byte _type s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::Parameter :md5sum-) "36ddbd8f0ee48b1cd429060e624bb6d5")
(setf (get nasa_r2_common_msgs::Parameter :datatype-) "nasa_r2_common_msgs/Parameter")
(setf (get nasa_r2_common_msgs::Parameter :definition-)
      "uint8 STRING  = 0
uint8 INT     = 1
uint8 FLOAT   = 2
uint8 BOOL    = 3
uint8 LIST    = 4
uint8 DICT    = 5

string          key
uint8           type
string          value

")



(provide :nasa_r2_common_msgs/Parameter "36ddbd8f0ee48b1cd429060e624bb6d5")


