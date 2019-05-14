;; Auto-generated. Do not edit!


(when (boundp 'poi_scan::PoiScanGoal)
  (if (not (find-package "POI_SCAN"))
    (make-package "POI_SCAN"))
  (shadow 'PoiScanGoal (find-package "POI_SCAN")))
(unless (find-package "POI_SCAN::POISCANGOAL")
  (make-package "POI_SCAN::POISCANGOAL"))

(in-package "ROS")
;;//! \htmlinclude PoiScanGoal.msg.html


(defclass poi_scan::PoiScanGoal
  :super ros::object
  :slots (_topics _bagfile_name_prefix _num_stops _tune_rotation _duration _return_to_original _upload_url _rm_after_upload _upload_token ))

(defmethod poi_scan::PoiScanGoal
  (:init
   (&key
    ((:topics __topics) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:bagfile_name_prefix __bagfile_name_prefix) "")
    ((:num_stops __num_stops) 0)
    ((:tune_rotation __tune_rotation) 0.0)
    ((:duration __duration) 0.0)
    ((:return_to_original __return_to_original) nil)
    ((:upload_url __upload_url) "")
    ((:rm_after_upload __rm_after_upload) nil)
    ((:upload_token __upload_token) "")
    )
   (send-super :init)
   (setq _topics __topics)
   (setq _bagfile_name_prefix (string __bagfile_name_prefix))
   (setq _num_stops (round __num_stops))
   (setq _tune_rotation (float __tune_rotation))
   (setq _duration (float __duration))
   (setq _return_to_original __return_to_original)
   (setq _upload_url (string __upload_url))
   (setq _rm_after_upload __rm_after_upload)
   (setq _upload_token (string __upload_token))
   self)
  (:topics
   (&optional __topics)
   (if __topics (setq _topics __topics)) _topics)
  (:bagfile_name_prefix
   (&optional __bagfile_name_prefix)
   (if __bagfile_name_prefix (setq _bagfile_name_prefix __bagfile_name_prefix)) _bagfile_name_prefix)
  (:num_stops
   (&optional __num_stops)
   (if __num_stops (setq _num_stops __num_stops)) _num_stops)
  (:tune_rotation
   (&optional __tune_rotation)
   (if __tune_rotation (setq _tune_rotation __tune_rotation)) _tune_rotation)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:return_to_original
   (&optional __return_to_original)
   (if __return_to_original (setq _return_to_original __return_to_original)) _return_to_original)
  (:upload_url
   (&optional __upload_url)
   (if __upload_url (setq _upload_url __upload_url)) _upload_url)
  (:rm_after_upload
   (&optional __rm_after_upload)
   (if __rm_after_upload (setq _rm_after_upload __rm_after_upload)) _rm_after_upload)
  (:upload_token
   (&optional __upload_token)
   (if __upload_token (setq _upload_token __upload_token)) _upload_token)
  (:serialization-length
   ()
   (+
    ;; string[] _topics
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _topics)) 4
    ;; string _bagfile_name_prefix
    4 (length _bagfile_name_prefix)
    ;; uint32 _num_stops
    4
    ;; float32 _tune_rotation
    4
    ;; float32 _duration
    4
    ;; bool _return_to_original
    1
    ;; string _upload_url
    4 (length _upload_url)
    ;; bool _rm_after_upload
    1
    ;; string _upload_token
    4 (length _upload_token)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _topics
     (write-long (length _topics) s)
     (dolist (elem _topics)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _bagfile_name_prefix
       (write-long (length _bagfile_name_prefix) s) (princ _bagfile_name_prefix s)
     ;; uint32 _num_stops
       (write-long _num_stops s)
     ;; float32 _tune_rotation
       (sys::poke _tune_rotation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _return_to_original
       (if _return_to_original (write-byte -1 s) (write-byte 0 s))
     ;; string _upload_url
       (write-long (length _upload_url) s) (princ _upload_url s)
     ;; bool _rm_after_upload
       (if _rm_after_upload (write-byte -1 s) (write-byte 0 s))
     ;; string _upload_token
       (write-long (length _upload_token) s) (princ _upload_token s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _topics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topics (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _topics i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _bagfile_name_prefix
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bagfile_name_prefix (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _num_stops
     (setq _num_stops (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _tune_rotation
     (setq _tune_rotation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _duration
     (setq _duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _return_to_original
     (setq _return_to_original (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _upload_url
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _upload_url (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _rm_after_upload
     (setq _rm_after_upload (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _upload_token
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _upload_token (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get poi_scan::PoiScanGoal :md5sum-) "ab03635573f377c07ab715379686bef4")
(setf (get poi_scan::PoiScanGoal :datatype-) "poi_scan/PoiScanGoal")
(setf (get poi_scan::PoiScanGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
string[] topics              # list of topics to record
string   bagfile_name_prefix # output bagfiles will begin with this prefix. Suffixes will be generated like \"_pos0.bag\"
uint32   num_stops           # number of times to stop during one 360degree rotation
float32  tune_rotation       # for example, value of 1.05 will overrotate 5% to compensate for natural underrrotation
float32  duration            # number of seconds to pause at each stop
bool     return_to_original  # set to true, if you want to return to original orientation when done
string   upload_url          # after recording rosbag, automatically upload here
bool     rm_after_upload     # if set to True, rosbag will be rm'd from turtlebot after successful upload
string   upload_token        # authorization token for upload server

")



(provide :poi_scan/PoiScanGoal "ab03635573f377c07ab715379686bef4")


