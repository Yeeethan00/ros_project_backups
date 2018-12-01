;; Auto-generated. Do not edit!


(when (boundp 'gazebo_taskboard::TaskboardPanelA)
  (if (not (find-package "GAZEBO_TASKBOARD"))
    (make-package "GAZEBO_TASKBOARD"))
  (shadow 'TaskboardPanelA (find-package "GAZEBO_TASKBOARD")))
(unless (find-package "GAZEBO_TASKBOARD::TASKBOARDPANELA")
  (make-package "GAZEBO_TASKBOARD::TASKBOARDPANELA"))

(in-package "ROS")
;;//! \htmlinclude TaskboardPanelA.msg.html


(defclass gazebo_taskboard::TaskboardPanelA
  :super ros::object
  :slots (_PANEL_POWER_COVER _PANEL_POWER_SWITCH _PANEL_POWER_LED _A01_ROCKER_SWITCH _A01_ROCKER_LED_TOP _A01_ROCKER_LED_BOTTOM _A02_LED_NUM_PAD_A1 _A02_LED_NUM_PAD_A2 _A02_LED_NUM_PAD_A3 _A02_LED_NUM_PAD_B1 _A02_LED_NUM_PAD_B2 _A02_LED_NUM_PAD_B3 _A02_LED_NUM_PAD_C1 _A02_LED_NUM_PAD_C2 _A02_LED_NUM_PAD_C3 _A02_NUM_PAD_A1 _A02_NUM_PAD_A2 _A02_NUM_PAD_A3 _A02_NUM_PAD_B1 _A02_NUM_PAD_B2 _A02_NUM_PAD_B3 _A02_NUM_PAD_C1 _A02_NUM_PAD_C2 _A02_NUM_PAD_C3 _A03_TOGGLE _A03_LED _A04_TOGGLE _A04_LED_TOP _A04_LED_BOTTOM _A05_TOGGLE _A05_LED ))

(defmethod gazebo_taskboard::TaskboardPanelA
  (:init
   (&key
    ((:PANEL_POWER_COVER __PANEL_POWER_COVER) "")
    ((:PANEL_POWER_SWITCH __PANEL_POWER_SWITCH) "")
    ((:PANEL_POWER_LED __PANEL_POWER_LED) "")
    ((:A01_ROCKER_SWITCH __A01_ROCKER_SWITCH) "")
    ((:A01_ROCKER_LED_TOP __A01_ROCKER_LED_TOP) "")
    ((:A01_ROCKER_LED_BOTTOM __A01_ROCKER_LED_BOTTOM) "")
    ((:A02_LED_NUM_PAD_A1 __A02_LED_NUM_PAD_A1) "")
    ((:A02_LED_NUM_PAD_A2 __A02_LED_NUM_PAD_A2) "")
    ((:A02_LED_NUM_PAD_A3 __A02_LED_NUM_PAD_A3) "")
    ((:A02_LED_NUM_PAD_B1 __A02_LED_NUM_PAD_B1) "")
    ((:A02_LED_NUM_PAD_B2 __A02_LED_NUM_PAD_B2) "")
    ((:A02_LED_NUM_PAD_B3 __A02_LED_NUM_PAD_B3) "")
    ((:A02_LED_NUM_PAD_C1 __A02_LED_NUM_PAD_C1) "")
    ((:A02_LED_NUM_PAD_C2 __A02_LED_NUM_PAD_C2) "")
    ((:A02_LED_NUM_PAD_C3 __A02_LED_NUM_PAD_C3) "")
    ((:A02_NUM_PAD_A1 __A02_NUM_PAD_A1) "")
    ((:A02_NUM_PAD_A2 __A02_NUM_PAD_A2) "")
    ((:A02_NUM_PAD_A3 __A02_NUM_PAD_A3) "")
    ((:A02_NUM_PAD_B1 __A02_NUM_PAD_B1) "")
    ((:A02_NUM_PAD_B2 __A02_NUM_PAD_B2) "")
    ((:A02_NUM_PAD_B3 __A02_NUM_PAD_B3) "")
    ((:A02_NUM_PAD_C1 __A02_NUM_PAD_C1) "")
    ((:A02_NUM_PAD_C2 __A02_NUM_PAD_C2) "")
    ((:A02_NUM_PAD_C3 __A02_NUM_PAD_C3) "")
    ((:A03_TOGGLE __A03_TOGGLE) "")
    ((:A03_LED __A03_LED) "")
    ((:A04_TOGGLE __A04_TOGGLE) "")
    ((:A04_LED_TOP __A04_LED_TOP) "")
    ((:A04_LED_BOTTOM __A04_LED_BOTTOM) "")
    ((:A05_TOGGLE __A05_TOGGLE) "")
    ((:A05_LED __A05_LED) "")
    )
   (send-super :init)
   (setq _PANEL_POWER_COVER (string __PANEL_POWER_COVER))
   (setq _PANEL_POWER_SWITCH (string __PANEL_POWER_SWITCH))
   (setq _PANEL_POWER_LED (string __PANEL_POWER_LED))
   (setq _A01_ROCKER_SWITCH (string __A01_ROCKER_SWITCH))
   (setq _A01_ROCKER_LED_TOP (string __A01_ROCKER_LED_TOP))
   (setq _A01_ROCKER_LED_BOTTOM (string __A01_ROCKER_LED_BOTTOM))
   (setq _A02_LED_NUM_PAD_A1 (string __A02_LED_NUM_PAD_A1))
   (setq _A02_LED_NUM_PAD_A2 (string __A02_LED_NUM_PAD_A2))
   (setq _A02_LED_NUM_PAD_A3 (string __A02_LED_NUM_PAD_A3))
   (setq _A02_LED_NUM_PAD_B1 (string __A02_LED_NUM_PAD_B1))
   (setq _A02_LED_NUM_PAD_B2 (string __A02_LED_NUM_PAD_B2))
   (setq _A02_LED_NUM_PAD_B3 (string __A02_LED_NUM_PAD_B3))
   (setq _A02_LED_NUM_PAD_C1 (string __A02_LED_NUM_PAD_C1))
   (setq _A02_LED_NUM_PAD_C2 (string __A02_LED_NUM_PAD_C2))
   (setq _A02_LED_NUM_PAD_C3 (string __A02_LED_NUM_PAD_C3))
   (setq _A02_NUM_PAD_A1 (string __A02_NUM_PAD_A1))
   (setq _A02_NUM_PAD_A2 (string __A02_NUM_PAD_A2))
   (setq _A02_NUM_PAD_A3 (string __A02_NUM_PAD_A3))
   (setq _A02_NUM_PAD_B1 (string __A02_NUM_PAD_B1))
   (setq _A02_NUM_PAD_B2 (string __A02_NUM_PAD_B2))
   (setq _A02_NUM_PAD_B3 (string __A02_NUM_PAD_B3))
   (setq _A02_NUM_PAD_C1 (string __A02_NUM_PAD_C1))
   (setq _A02_NUM_PAD_C2 (string __A02_NUM_PAD_C2))
   (setq _A02_NUM_PAD_C3 (string __A02_NUM_PAD_C3))
   (setq _A03_TOGGLE (string __A03_TOGGLE))
   (setq _A03_LED (string __A03_LED))
   (setq _A04_TOGGLE (string __A04_TOGGLE))
   (setq _A04_LED_TOP (string __A04_LED_TOP))
   (setq _A04_LED_BOTTOM (string __A04_LED_BOTTOM))
   (setq _A05_TOGGLE (string __A05_TOGGLE))
   (setq _A05_LED (string __A05_LED))
   self)
  (:PANEL_POWER_COVER
   (&optional __PANEL_POWER_COVER)
   (if __PANEL_POWER_COVER (setq _PANEL_POWER_COVER __PANEL_POWER_COVER)) _PANEL_POWER_COVER)
  (:PANEL_POWER_SWITCH
   (&optional __PANEL_POWER_SWITCH)
   (if __PANEL_POWER_SWITCH (setq _PANEL_POWER_SWITCH __PANEL_POWER_SWITCH)) _PANEL_POWER_SWITCH)
  (:PANEL_POWER_LED
   (&optional __PANEL_POWER_LED)
   (if __PANEL_POWER_LED (setq _PANEL_POWER_LED __PANEL_POWER_LED)) _PANEL_POWER_LED)
  (:A01_ROCKER_SWITCH
   (&optional __A01_ROCKER_SWITCH)
   (if __A01_ROCKER_SWITCH (setq _A01_ROCKER_SWITCH __A01_ROCKER_SWITCH)) _A01_ROCKER_SWITCH)
  (:A01_ROCKER_LED_TOP
   (&optional __A01_ROCKER_LED_TOP)
   (if __A01_ROCKER_LED_TOP (setq _A01_ROCKER_LED_TOP __A01_ROCKER_LED_TOP)) _A01_ROCKER_LED_TOP)
  (:A01_ROCKER_LED_BOTTOM
   (&optional __A01_ROCKER_LED_BOTTOM)
   (if __A01_ROCKER_LED_BOTTOM (setq _A01_ROCKER_LED_BOTTOM __A01_ROCKER_LED_BOTTOM)) _A01_ROCKER_LED_BOTTOM)
  (:A02_LED_NUM_PAD_A1
   (&optional __A02_LED_NUM_PAD_A1)
   (if __A02_LED_NUM_PAD_A1 (setq _A02_LED_NUM_PAD_A1 __A02_LED_NUM_PAD_A1)) _A02_LED_NUM_PAD_A1)
  (:A02_LED_NUM_PAD_A2
   (&optional __A02_LED_NUM_PAD_A2)
   (if __A02_LED_NUM_PAD_A2 (setq _A02_LED_NUM_PAD_A2 __A02_LED_NUM_PAD_A2)) _A02_LED_NUM_PAD_A2)
  (:A02_LED_NUM_PAD_A3
   (&optional __A02_LED_NUM_PAD_A3)
   (if __A02_LED_NUM_PAD_A3 (setq _A02_LED_NUM_PAD_A3 __A02_LED_NUM_PAD_A3)) _A02_LED_NUM_PAD_A3)
  (:A02_LED_NUM_PAD_B1
   (&optional __A02_LED_NUM_PAD_B1)
   (if __A02_LED_NUM_PAD_B1 (setq _A02_LED_NUM_PAD_B1 __A02_LED_NUM_PAD_B1)) _A02_LED_NUM_PAD_B1)
  (:A02_LED_NUM_PAD_B2
   (&optional __A02_LED_NUM_PAD_B2)
   (if __A02_LED_NUM_PAD_B2 (setq _A02_LED_NUM_PAD_B2 __A02_LED_NUM_PAD_B2)) _A02_LED_NUM_PAD_B2)
  (:A02_LED_NUM_PAD_B3
   (&optional __A02_LED_NUM_PAD_B3)
   (if __A02_LED_NUM_PAD_B3 (setq _A02_LED_NUM_PAD_B3 __A02_LED_NUM_PAD_B3)) _A02_LED_NUM_PAD_B3)
  (:A02_LED_NUM_PAD_C1
   (&optional __A02_LED_NUM_PAD_C1)
   (if __A02_LED_NUM_PAD_C1 (setq _A02_LED_NUM_PAD_C1 __A02_LED_NUM_PAD_C1)) _A02_LED_NUM_PAD_C1)
  (:A02_LED_NUM_PAD_C2
   (&optional __A02_LED_NUM_PAD_C2)
   (if __A02_LED_NUM_PAD_C2 (setq _A02_LED_NUM_PAD_C2 __A02_LED_NUM_PAD_C2)) _A02_LED_NUM_PAD_C2)
  (:A02_LED_NUM_PAD_C3
   (&optional __A02_LED_NUM_PAD_C3)
   (if __A02_LED_NUM_PAD_C3 (setq _A02_LED_NUM_PAD_C3 __A02_LED_NUM_PAD_C3)) _A02_LED_NUM_PAD_C3)
  (:A02_NUM_PAD_A1
   (&optional __A02_NUM_PAD_A1)
   (if __A02_NUM_PAD_A1 (setq _A02_NUM_PAD_A1 __A02_NUM_PAD_A1)) _A02_NUM_PAD_A1)
  (:A02_NUM_PAD_A2
   (&optional __A02_NUM_PAD_A2)
   (if __A02_NUM_PAD_A2 (setq _A02_NUM_PAD_A2 __A02_NUM_PAD_A2)) _A02_NUM_PAD_A2)
  (:A02_NUM_PAD_A3
   (&optional __A02_NUM_PAD_A3)
   (if __A02_NUM_PAD_A3 (setq _A02_NUM_PAD_A3 __A02_NUM_PAD_A3)) _A02_NUM_PAD_A3)
  (:A02_NUM_PAD_B1
   (&optional __A02_NUM_PAD_B1)
   (if __A02_NUM_PAD_B1 (setq _A02_NUM_PAD_B1 __A02_NUM_PAD_B1)) _A02_NUM_PAD_B1)
  (:A02_NUM_PAD_B2
   (&optional __A02_NUM_PAD_B2)
   (if __A02_NUM_PAD_B2 (setq _A02_NUM_PAD_B2 __A02_NUM_PAD_B2)) _A02_NUM_PAD_B2)
  (:A02_NUM_PAD_B3
   (&optional __A02_NUM_PAD_B3)
   (if __A02_NUM_PAD_B3 (setq _A02_NUM_PAD_B3 __A02_NUM_PAD_B3)) _A02_NUM_PAD_B3)
  (:A02_NUM_PAD_C1
   (&optional __A02_NUM_PAD_C1)
   (if __A02_NUM_PAD_C1 (setq _A02_NUM_PAD_C1 __A02_NUM_PAD_C1)) _A02_NUM_PAD_C1)
  (:A02_NUM_PAD_C2
   (&optional __A02_NUM_PAD_C2)
   (if __A02_NUM_PAD_C2 (setq _A02_NUM_PAD_C2 __A02_NUM_PAD_C2)) _A02_NUM_PAD_C2)
  (:A02_NUM_PAD_C3
   (&optional __A02_NUM_PAD_C3)
   (if __A02_NUM_PAD_C3 (setq _A02_NUM_PAD_C3 __A02_NUM_PAD_C3)) _A02_NUM_PAD_C3)
  (:A03_TOGGLE
   (&optional __A03_TOGGLE)
   (if __A03_TOGGLE (setq _A03_TOGGLE __A03_TOGGLE)) _A03_TOGGLE)
  (:A03_LED
   (&optional __A03_LED)
   (if __A03_LED (setq _A03_LED __A03_LED)) _A03_LED)
  (:A04_TOGGLE
   (&optional __A04_TOGGLE)
   (if __A04_TOGGLE (setq _A04_TOGGLE __A04_TOGGLE)) _A04_TOGGLE)
  (:A04_LED_TOP
   (&optional __A04_LED_TOP)
   (if __A04_LED_TOP (setq _A04_LED_TOP __A04_LED_TOP)) _A04_LED_TOP)
  (:A04_LED_BOTTOM
   (&optional __A04_LED_BOTTOM)
   (if __A04_LED_BOTTOM (setq _A04_LED_BOTTOM __A04_LED_BOTTOM)) _A04_LED_BOTTOM)
  (:A05_TOGGLE
   (&optional __A05_TOGGLE)
   (if __A05_TOGGLE (setq _A05_TOGGLE __A05_TOGGLE)) _A05_TOGGLE)
  (:A05_LED
   (&optional __A05_LED)
   (if __A05_LED (setq _A05_LED __A05_LED)) _A05_LED)
  (:serialization-length
   ()
   (+
    ;; string _PANEL_POWER_COVER
    4 (length _PANEL_POWER_COVER)
    ;; string _PANEL_POWER_SWITCH
    4 (length _PANEL_POWER_SWITCH)
    ;; string _PANEL_POWER_LED
    4 (length _PANEL_POWER_LED)
    ;; string _A01_ROCKER_SWITCH
    4 (length _A01_ROCKER_SWITCH)
    ;; string _A01_ROCKER_LED_TOP
    4 (length _A01_ROCKER_LED_TOP)
    ;; string _A01_ROCKER_LED_BOTTOM
    4 (length _A01_ROCKER_LED_BOTTOM)
    ;; string _A02_LED_NUM_PAD_A1
    4 (length _A02_LED_NUM_PAD_A1)
    ;; string _A02_LED_NUM_PAD_A2
    4 (length _A02_LED_NUM_PAD_A2)
    ;; string _A02_LED_NUM_PAD_A3
    4 (length _A02_LED_NUM_PAD_A3)
    ;; string _A02_LED_NUM_PAD_B1
    4 (length _A02_LED_NUM_PAD_B1)
    ;; string _A02_LED_NUM_PAD_B2
    4 (length _A02_LED_NUM_PAD_B2)
    ;; string _A02_LED_NUM_PAD_B3
    4 (length _A02_LED_NUM_PAD_B3)
    ;; string _A02_LED_NUM_PAD_C1
    4 (length _A02_LED_NUM_PAD_C1)
    ;; string _A02_LED_NUM_PAD_C2
    4 (length _A02_LED_NUM_PAD_C2)
    ;; string _A02_LED_NUM_PAD_C3
    4 (length _A02_LED_NUM_PAD_C3)
    ;; string _A02_NUM_PAD_A1
    4 (length _A02_NUM_PAD_A1)
    ;; string _A02_NUM_PAD_A2
    4 (length _A02_NUM_PAD_A2)
    ;; string _A02_NUM_PAD_A3
    4 (length _A02_NUM_PAD_A3)
    ;; string _A02_NUM_PAD_B1
    4 (length _A02_NUM_PAD_B1)
    ;; string _A02_NUM_PAD_B2
    4 (length _A02_NUM_PAD_B2)
    ;; string _A02_NUM_PAD_B3
    4 (length _A02_NUM_PAD_B3)
    ;; string _A02_NUM_PAD_C1
    4 (length _A02_NUM_PAD_C1)
    ;; string _A02_NUM_PAD_C2
    4 (length _A02_NUM_PAD_C2)
    ;; string _A02_NUM_PAD_C3
    4 (length _A02_NUM_PAD_C3)
    ;; string _A03_TOGGLE
    4 (length _A03_TOGGLE)
    ;; string _A03_LED
    4 (length _A03_LED)
    ;; string _A04_TOGGLE
    4 (length _A04_TOGGLE)
    ;; string _A04_LED_TOP
    4 (length _A04_LED_TOP)
    ;; string _A04_LED_BOTTOM
    4 (length _A04_LED_BOTTOM)
    ;; string _A05_TOGGLE
    4 (length _A05_TOGGLE)
    ;; string _A05_LED
    4 (length _A05_LED)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _PANEL_POWER_COVER
       (write-long (length _PANEL_POWER_COVER) s) (princ _PANEL_POWER_COVER s)
     ;; string _PANEL_POWER_SWITCH
       (write-long (length _PANEL_POWER_SWITCH) s) (princ _PANEL_POWER_SWITCH s)
     ;; string _PANEL_POWER_LED
       (write-long (length _PANEL_POWER_LED) s) (princ _PANEL_POWER_LED s)
     ;; string _A01_ROCKER_SWITCH
       (write-long (length _A01_ROCKER_SWITCH) s) (princ _A01_ROCKER_SWITCH s)
     ;; string _A01_ROCKER_LED_TOP
       (write-long (length _A01_ROCKER_LED_TOP) s) (princ _A01_ROCKER_LED_TOP s)
     ;; string _A01_ROCKER_LED_BOTTOM
       (write-long (length _A01_ROCKER_LED_BOTTOM) s) (princ _A01_ROCKER_LED_BOTTOM s)
     ;; string _A02_LED_NUM_PAD_A1
       (write-long (length _A02_LED_NUM_PAD_A1) s) (princ _A02_LED_NUM_PAD_A1 s)
     ;; string _A02_LED_NUM_PAD_A2
       (write-long (length _A02_LED_NUM_PAD_A2) s) (princ _A02_LED_NUM_PAD_A2 s)
     ;; string _A02_LED_NUM_PAD_A3
       (write-long (length _A02_LED_NUM_PAD_A3) s) (princ _A02_LED_NUM_PAD_A3 s)
     ;; string _A02_LED_NUM_PAD_B1
       (write-long (length _A02_LED_NUM_PAD_B1) s) (princ _A02_LED_NUM_PAD_B1 s)
     ;; string _A02_LED_NUM_PAD_B2
       (write-long (length _A02_LED_NUM_PAD_B2) s) (princ _A02_LED_NUM_PAD_B2 s)
     ;; string _A02_LED_NUM_PAD_B3
       (write-long (length _A02_LED_NUM_PAD_B3) s) (princ _A02_LED_NUM_PAD_B3 s)
     ;; string _A02_LED_NUM_PAD_C1
       (write-long (length _A02_LED_NUM_PAD_C1) s) (princ _A02_LED_NUM_PAD_C1 s)
     ;; string _A02_LED_NUM_PAD_C2
       (write-long (length _A02_LED_NUM_PAD_C2) s) (princ _A02_LED_NUM_PAD_C2 s)
     ;; string _A02_LED_NUM_PAD_C3
       (write-long (length _A02_LED_NUM_PAD_C3) s) (princ _A02_LED_NUM_PAD_C3 s)
     ;; string _A02_NUM_PAD_A1
       (write-long (length _A02_NUM_PAD_A1) s) (princ _A02_NUM_PAD_A1 s)
     ;; string _A02_NUM_PAD_A2
       (write-long (length _A02_NUM_PAD_A2) s) (princ _A02_NUM_PAD_A2 s)
     ;; string _A02_NUM_PAD_A3
       (write-long (length _A02_NUM_PAD_A3) s) (princ _A02_NUM_PAD_A3 s)
     ;; string _A02_NUM_PAD_B1
       (write-long (length _A02_NUM_PAD_B1) s) (princ _A02_NUM_PAD_B1 s)
     ;; string _A02_NUM_PAD_B2
       (write-long (length _A02_NUM_PAD_B2) s) (princ _A02_NUM_PAD_B2 s)
     ;; string _A02_NUM_PAD_B3
       (write-long (length _A02_NUM_PAD_B3) s) (princ _A02_NUM_PAD_B3 s)
     ;; string _A02_NUM_PAD_C1
       (write-long (length _A02_NUM_PAD_C1) s) (princ _A02_NUM_PAD_C1 s)
     ;; string _A02_NUM_PAD_C2
       (write-long (length _A02_NUM_PAD_C2) s) (princ _A02_NUM_PAD_C2 s)
     ;; string _A02_NUM_PAD_C3
       (write-long (length _A02_NUM_PAD_C3) s) (princ _A02_NUM_PAD_C3 s)
     ;; string _A03_TOGGLE
       (write-long (length _A03_TOGGLE) s) (princ _A03_TOGGLE s)
     ;; string _A03_LED
       (write-long (length _A03_LED) s) (princ _A03_LED s)
     ;; string _A04_TOGGLE
       (write-long (length _A04_TOGGLE) s) (princ _A04_TOGGLE s)
     ;; string _A04_LED_TOP
       (write-long (length _A04_LED_TOP) s) (princ _A04_LED_TOP s)
     ;; string _A04_LED_BOTTOM
       (write-long (length _A04_LED_BOTTOM) s) (princ _A04_LED_BOTTOM s)
     ;; string _A05_TOGGLE
       (write-long (length _A05_TOGGLE) s) (princ _A05_TOGGLE s)
     ;; string _A05_LED
       (write-long (length _A05_LED) s) (princ _A05_LED s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _PANEL_POWER_COVER
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _PANEL_POWER_COVER (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _PANEL_POWER_SWITCH
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _PANEL_POWER_SWITCH (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _PANEL_POWER_LED
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _PANEL_POWER_LED (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A01_ROCKER_SWITCH
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A01_ROCKER_SWITCH (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A01_ROCKER_LED_TOP
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A01_ROCKER_LED_TOP (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A01_ROCKER_LED_BOTTOM
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A01_ROCKER_LED_BOTTOM (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_LED_NUM_PAD_A1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_LED_NUM_PAD_A1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_LED_NUM_PAD_A2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_LED_NUM_PAD_A2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_LED_NUM_PAD_A3
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_LED_NUM_PAD_A3 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_LED_NUM_PAD_B1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_LED_NUM_PAD_B1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_LED_NUM_PAD_B2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_LED_NUM_PAD_B2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_LED_NUM_PAD_B3
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_LED_NUM_PAD_B3 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_LED_NUM_PAD_C1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_LED_NUM_PAD_C1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_LED_NUM_PAD_C2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_LED_NUM_PAD_C2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_LED_NUM_PAD_C3
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_LED_NUM_PAD_C3 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_NUM_PAD_A1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_NUM_PAD_A1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_NUM_PAD_A2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_NUM_PAD_A2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_NUM_PAD_A3
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_NUM_PAD_A3 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_NUM_PAD_B1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_NUM_PAD_B1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_NUM_PAD_B2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_NUM_PAD_B2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_NUM_PAD_B3
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_NUM_PAD_B3 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_NUM_PAD_C1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_NUM_PAD_C1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_NUM_PAD_C2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_NUM_PAD_C2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A02_NUM_PAD_C3
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A02_NUM_PAD_C3 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A03_TOGGLE
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A03_TOGGLE (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A03_LED
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A03_LED (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A04_TOGGLE
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A04_TOGGLE (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A04_LED_TOP
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A04_LED_TOP (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A04_LED_BOTTOM
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A04_LED_BOTTOM (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A05_TOGGLE
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A05_TOGGLE (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _A05_LED
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _A05_LED (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gazebo_taskboard::TaskboardPanelA :md5sum-) "ee4c1b86056331dd76c8ef8469b7f0fd")
(setf (get gazebo_taskboard::TaskboardPanelA :datatype-) "gazebo_taskboard/TaskboardPanelA")
(setf (get gazebo_taskboard::TaskboardPanelA :definition-)
      "string PANEL_POWER_COVER
string PANEL_POWER_SWITCH
string PANEL_POWER_LED
string A01_ROCKER_SWITCH
string A01_ROCKER_LED_TOP
string A01_ROCKER_LED_BOTTOM
string A02_LED_NUM_PAD_A1
string A02_LED_NUM_PAD_A2
string A02_LED_NUM_PAD_A3
string A02_LED_NUM_PAD_B1
string A02_LED_NUM_PAD_B2
string A02_LED_NUM_PAD_B3
string A02_LED_NUM_PAD_C1
string A02_LED_NUM_PAD_C2
string A02_LED_NUM_PAD_C3
string A02_NUM_PAD_A1
string A02_NUM_PAD_A2
string A02_NUM_PAD_A3
string A02_NUM_PAD_B1
string A02_NUM_PAD_B2
string A02_NUM_PAD_B3
string A02_NUM_PAD_C1
string A02_NUM_PAD_C2
string A02_NUM_PAD_C3
string A03_TOGGLE
string A03_LED
string A04_TOGGLE
string A04_LED_TOP
string A04_LED_BOTTOM
string A05_TOGGLE
string A05_LED

")



(provide :gazebo_taskboard/TaskboardPanelA "ee4c1b86056331dd76c8ef8469b7f0fd")


