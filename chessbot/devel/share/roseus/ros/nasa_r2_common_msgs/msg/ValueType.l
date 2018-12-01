;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::ValueType)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'ValueType (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::VALUETYPE")
  (make-package "NASA_R2_COMMON_MSGS::VALUETYPE"))

(in-package "ROS")
;;//! \htmlinclude ValueType.msg.html


(defclass nasa_r2_common_msgs::ValueType
  :super ros::object
  :slots (_key _type _index ))

(defmethod nasa_r2_common_msgs::ValueType
  (:init
   (&key
    ((:key __key) "")
    ((:type __type) (instance nasa_r2_common_msgs::MappedType :init))
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _key (string __key))
   (setq _type __type)
   (setq _index (round __index))
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; string _key
    4 (length _key)
    ;; nasa_r2_common_msgs/MappedType _type
    (send _type :serialization-length)
    ;; uint32 _index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; nasa_r2_common_msgs/MappedType _type
       (send _type :serialize s)
     ;; uint32 _index
       (write-long _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; nasa_r2_common_msgs/MappedType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; uint32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::ValueType :md5sum-) "77bd6714cc0b98aab863f096be2d2adc")
(setf (get nasa_r2_common_msgs::ValueType :datatype-) "nasa_r2_common_msgs/ValueType")
(setf (get nasa_r2_common_msgs::ValueType :definition-)
      "string     key
MappedType type
uint32     index

================================================================================
MSG: nasa_r2_common_msgs/MappedType
uint8 STRING  = 0
uint8 UINT16  = 1
uint8 INT16   = 2
uint8 UINT32  = 3
uint8 INT32   = 4
uint8 FLOAT32 = 5
uint8 BOOL    = 6

uint8 type

")



(provide :nasa_r2_common_msgs/ValueType "77bd6714cc0b98aab863f096be2d2adc")


