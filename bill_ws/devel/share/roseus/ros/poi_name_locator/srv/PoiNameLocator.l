;; Auto-generated. Do not edit!


(when (boundp 'poi_name_locator::PoiNameLocator)
  (if (not (find-package "POI_NAME_LOCATOR"))
    (make-package "POI_NAME_LOCATOR"))
  (shadow 'PoiNameLocator (find-package "POI_NAME_LOCATOR")))
(unless (find-package "POI_NAME_LOCATOR::POINAMELOCATOR")
  (make-package "POI_NAME_LOCATOR::POINAMELOCATOR"))
(unless (find-package "POI_NAME_LOCATOR::POINAMELOCATORREQUEST")
  (make-package "POI_NAME_LOCATOR::POINAMELOCATORREQUEST"))
(unless (find-package "POI_NAME_LOCATOR::POINAMELOCATORRESPONSE")
  (make-package "POI_NAME_LOCATOR::POINAMELOCATORRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass poi_name_locator::PoiNameLocatorRequest
  :super ros::object
  :slots (_poi_name ))

(defmethod poi_name_locator::PoiNameLocatorRequest
  (:init
   (&key
    ((:poi_name __poi_name) "")
    )
   (send-super :init)
   (setq _poi_name (string __poi_name))
   self)
  (:poi_name
   (&optional __poi_name)
   (if __poi_name (setq _poi_name __poi_name)) _poi_name)
  (:serialization-length
   ()
   (+
    ;; string _poi_name
    4 (length _poi_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _poi_name
       (write-long (length _poi_name) s) (princ _poi_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _poi_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _poi_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass poi_name_locator::PoiNameLocatorResponse
  :super ros::object
  :slots (_position ))

(defmethod poi_name_locator::PoiNameLocatorResponse
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _position __position)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(defclass poi_name_locator::PoiNameLocator
  :super ros::object
  :slots ())

(setf (get poi_name_locator::PoiNameLocator :md5sum-) "91b7101264f88cf4becf629edfa6879e")
(setf (get poi_name_locator::PoiNameLocator :datatype-) "poi_name_locator/PoiNameLocator")
(setf (get poi_name_locator::PoiNameLocator :request) poi_name_locator::PoiNameLocatorRequest)
(setf (get poi_name_locator::PoiNameLocator :response) poi_name_locator::PoiNameLocatorResponse)

(defmethod poi_name_locator::PoiNameLocatorRequest
  (:response () (instance poi_name_locator::PoiNameLocatorResponse :init)))

(setf (get poi_name_locator::PoiNameLocatorRequest :md5sum-) "91b7101264f88cf4becf629edfa6879e")
(setf (get poi_name_locator::PoiNameLocatorRequest :datatype-) "poi_name_locator/PoiNameLocatorRequest")
(setf (get poi_name_locator::PoiNameLocatorRequest :definition-)
      "string poi_name
---
geometry_msgs/Point position


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get poi_name_locator::PoiNameLocatorResponse :md5sum-) "91b7101264f88cf4becf629edfa6879e")
(setf (get poi_name_locator::PoiNameLocatorResponse :datatype-) "poi_name_locator/PoiNameLocatorResponse")
(setf (get poi_name_locator::PoiNameLocatorResponse :definition-)
      "string poi_name
---
geometry_msgs/Point position


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :poi_name_locator/PoiNameLocator "91b7101264f88cf4becf629edfa6879e")


