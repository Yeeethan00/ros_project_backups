;; Auto-generated. Do not edit!


(when (boundp 'nasa_r2_common_msgs::VariantMap)
  (if (not (find-package "NASA_R2_COMMON_MSGS"))
    (make-package "NASA_R2_COMMON_MSGS"))
  (shadow 'VariantMap (find-package "NASA_R2_COMMON_MSGS")))
(unless (find-package "NASA_R2_COMMON_MSGS::VARIANTMAP")
  (make-package "NASA_R2_COMMON_MSGS::VARIANTMAP"))

(in-package "ROS")
;;//! \htmlinclude VariantMap.msg.html


(defclass nasa_r2_common_msgs::VariantMap
  :super ros::object
  :slots (_name _message _value _stringMap _uint16Map _int16Map _uint32Map _int32Map _float32Map _boolMap ))

(defmethod nasa_r2_common_msgs::VariantMap
  (:init
   (&key
    ((:name __name) "")
    ((:message __message) "")
    ((:value __value) (let (r) (dotimes (i 0) (push (instance nasa_r2_common_msgs::ValueType :init) r)) r))
    ((:stringMap __stringMap) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:uint16Map __uint16Map) (make-array 0 :initial-element 0 :element-type :integer))
    ((:int16Map __int16Map) (make-array 0 :initial-element 0 :element-type :integer))
    ((:uint32Map __uint32Map) (make-array 0 :initial-element 0 :element-type :integer))
    ((:int32Map __int32Map) (make-array 0 :initial-element 0 :element-type :integer))
    ((:float32Map __float32Map) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:boolMap __boolMap) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _message (string __message))
   (setq _value __value)
   (setq _stringMap __stringMap)
   (setq _uint16Map __uint16Map)
   (setq _int16Map __int16Map)
   (setq _uint32Map __uint32Map)
   (setq _int32Map __int32Map)
   (setq _float32Map __float32Map)
   (setq _boolMap __boolMap)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:value
   (&rest __value)
   (if (keywordp (car __value))
       (send* _value __value)
     (progn
       (if __value (setq _value (car __value)))
       _value)))
  (:stringMap
   (&optional __stringMap)
   (if __stringMap (setq _stringMap __stringMap)) _stringMap)
  (:uint16Map
   (&optional __uint16Map)
   (if __uint16Map (setq _uint16Map __uint16Map)) _uint16Map)
  (:int16Map
   (&optional __int16Map)
   (if __int16Map (setq _int16Map __int16Map)) _int16Map)
  (:uint32Map
   (&optional __uint32Map)
   (if __uint32Map (setq _uint32Map __uint32Map)) _uint32Map)
  (:int32Map
   (&optional __int32Map)
   (if __int32Map (setq _int32Map __int32Map)) _int32Map)
  (:float32Map
   (&optional __float32Map)
   (if __float32Map (setq _float32Map __float32Map)) _float32Map)
  (:boolMap
   (&optional __boolMap)
   (if __boolMap (setq _boolMap __boolMap)) _boolMap)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _message
    4 (length _message)
    ;; nasa_r2_common_msgs/ValueType[] _value
    (apply #'+ (send-all _value :serialization-length)) 4
    ;; string[] _stringMap
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _stringMap)) 4
    ;; uint16[] _uint16Map
    (* 2    (length _uint16Map)) 4
    ;; int16[] _int16Map
    (* 2    (length _int16Map)) 4
    ;; uint32[] _uint32Map
    (* 4    (length _uint32Map)) 4
    ;; int32[] _int32Map
    (* 4    (length _int32Map)) 4
    ;; float32[] _float32Map
    (* 4    (length _float32Map)) 4
    ;; bool[] _boolMap
    (* 1    (length _boolMap)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; nasa_r2_common_msgs/ValueType[] _value
     (write-long (length _value) s)
     (dolist (elem _value)
       (send elem :serialize s)
       )
     ;; string[] _stringMap
     (write-long (length _stringMap) s)
     (dolist (elem _stringMap)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint16[] _uint16Map
     (write-long (length _uint16Map) s)
     (dotimes (i (length _uint16Map))
       (write-word (elt _uint16Map i) s)
       )
     ;; int16[] _int16Map
     (write-long (length _int16Map) s)
     (dotimes (i (length _int16Map))
       (write-word (elt _int16Map i) s)
       )
     ;; uint32[] _uint32Map
     (write-long (length _uint32Map) s)
     (dotimes (i (length _uint32Map))
       (write-long (elt _uint32Map i) s)
       )
     ;; int32[] _int32Map
     (write-long (length _int32Map) s)
     (dotimes (i (length _int32Map))
       (write-long (elt _int32Map i) s)
       )
     ;; float32[] _float32Map
     (write-long (length _float32Map) s)
     (dotimes (i (length _float32Map))
       (sys::poke (elt _float32Map i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool[] _boolMap
     (write-long (length _boolMap) s)
     (dotimes (i (length _boolMap))
       (if (elt _boolMap i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; nasa_r2_common_msgs/ValueType[] _value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value (let (r) (dotimes (i n) (push (instance nasa_r2_common_msgs::ValueType :init) r)) r))
     (dolist (elem- _value)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _stringMap
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stringMap (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _stringMap i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint16[] _uint16Map
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uint16Map (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _uint16Map i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _int16Map
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _int16Map (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _int16Map i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint32[] _uint32Map
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uint32Map (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _uint32Map i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _int32Map
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _int32Map (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _int32Map i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _float32Map
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _float32Map (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _float32Map i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool[] _boolMap
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _boolMap (make-list n))
     (dotimes (i n)
     (setf (elt _boolMap i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get nasa_r2_common_msgs::VariantMap :md5sum-) "8356d002313ee472651f88ac3bf992a9")
(setf (get nasa_r2_common_msgs::VariantMap :datatype-) "nasa_r2_common_msgs/VariantMap")
(setf (get nasa_r2_common_msgs::VariantMap :definition-)
      "string      name
string      message
ValueType[] value
string[]    stringMap
uint16[]    uint16Map
int16[]     int16Map
uint32[]    uint32Map
int32[]     int32Map
float32[]   float32Map
bool[]      boolMap

================================================================================
MSG: nasa_r2_common_msgs/ValueType
string     key
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



(provide :nasa_r2_common_msgs/VariantMap "8356d002313ee472651f88ac3bf992a9")


