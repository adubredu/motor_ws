; Auto-generated. Do not edit!


(cl:in-package poi_scan-msg)


;//! \htmlinclude PoiScanGoal.msg.html

(cl:defclass <PoiScanGoal> (roslisp-msg-protocol:ros-message)
  ((topics
    :reader topics
    :initarg :topics
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (bagfile_name_prefix
    :reader bagfile_name_prefix
    :initarg :bagfile_name_prefix
    :type cl:string
    :initform "")
   (num_stops
    :reader num_stops
    :initarg :num_stops
    :type cl:integer
    :initform 0)
   (tune_rotation
    :reader tune_rotation
    :initarg :tune_rotation
    :type cl:float
    :initform 0.0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0)
   (return_to_original
    :reader return_to_original
    :initarg :return_to_original
    :type cl:boolean
    :initform cl:nil)
   (upload_url
    :reader upload_url
    :initarg :upload_url
    :type cl:string
    :initform "")
   (rm_after_upload
    :reader rm_after_upload
    :initarg :rm_after_upload
    :type cl:boolean
    :initform cl:nil)
   (upload_token
    :reader upload_token
    :initarg :upload_token
    :type cl:string
    :initform ""))
)

(cl:defclass PoiScanGoal (<PoiScanGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoiScanGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoiScanGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_scan-msg:<PoiScanGoal> is deprecated: use poi_scan-msg:PoiScanGoal instead.")))

(cl:ensure-generic-function 'topics-val :lambda-list '(m))
(cl:defmethod topics-val ((m <PoiScanGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_scan-msg:topics-val is deprecated.  Use poi_scan-msg:topics instead.")
  (topics m))

(cl:ensure-generic-function 'bagfile_name_prefix-val :lambda-list '(m))
(cl:defmethod bagfile_name_prefix-val ((m <PoiScanGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_scan-msg:bagfile_name_prefix-val is deprecated.  Use poi_scan-msg:bagfile_name_prefix instead.")
  (bagfile_name_prefix m))

(cl:ensure-generic-function 'num_stops-val :lambda-list '(m))
(cl:defmethod num_stops-val ((m <PoiScanGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_scan-msg:num_stops-val is deprecated.  Use poi_scan-msg:num_stops instead.")
  (num_stops m))

(cl:ensure-generic-function 'tune_rotation-val :lambda-list '(m))
(cl:defmethod tune_rotation-val ((m <PoiScanGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_scan-msg:tune_rotation-val is deprecated.  Use poi_scan-msg:tune_rotation instead.")
  (tune_rotation m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <PoiScanGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_scan-msg:duration-val is deprecated.  Use poi_scan-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'return_to_original-val :lambda-list '(m))
(cl:defmethod return_to_original-val ((m <PoiScanGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_scan-msg:return_to_original-val is deprecated.  Use poi_scan-msg:return_to_original instead.")
  (return_to_original m))

(cl:ensure-generic-function 'upload_url-val :lambda-list '(m))
(cl:defmethod upload_url-val ((m <PoiScanGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_scan-msg:upload_url-val is deprecated.  Use poi_scan-msg:upload_url instead.")
  (upload_url m))

(cl:ensure-generic-function 'rm_after_upload-val :lambda-list '(m))
(cl:defmethod rm_after_upload-val ((m <PoiScanGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_scan-msg:rm_after_upload-val is deprecated.  Use poi_scan-msg:rm_after_upload instead.")
  (rm_after_upload m))

(cl:ensure-generic-function 'upload_token-val :lambda-list '(m))
(cl:defmethod upload_token-val ((m <PoiScanGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_scan-msg:upload_token-val is deprecated.  Use poi_scan-msg:upload_token instead.")
  (upload_token m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoiScanGoal>) ostream)
  "Serializes a message object of type '<PoiScanGoal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'topics))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'topics))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bagfile_name_prefix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bagfile_name_prefix))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_stops)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_stops)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_stops)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_stops)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tune_rotation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'return_to_original) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'upload_url))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'upload_url))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rm_after_upload) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'upload_token))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'upload_token))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoiScanGoal>) istream)
  "Deserializes a message object of type '<PoiScanGoal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'topics) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'topics)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bagfile_name_prefix) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bagfile_name_prefix) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_stops)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_stops)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_stops)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_stops)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tune_rotation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'return_to_original) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'upload_url) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'upload_url) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'rm_after_upload) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'upload_token) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'upload_token) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoiScanGoal>)))
  "Returns string type for a message object of type '<PoiScanGoal>"
  "poi_scan/PoiScanGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoiScanGoal)))
  "Returns string type for a message object of type 'PoiScanGoal"
  "poi_scan/PoiScanGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoiScanGoal>)))
  "Returns md5sum for a message object of type '<PoiScanGoal>"
  "ab03635573f377c07ab715379686bef4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoiScanGoal)))
  "Returns md5sum for a message object of type 'PoiScanGoal"
  "ab03635573f377c07ab715379686bef4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoiScanGoal>)))
  "Returns full string definition for message of type '<PoiScanGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string[] topics              # list of topics to record~%string   bagfile_name_prefix # output bagfiles will begin with this prefix. Suffixes will be generated like \"_pos0.bag\"~%uint32   num_stops           # number of times to stop during one 360degree rotation~%float32  tune_rotation       # for example, value of 1.05 will overrotate 5% to compensate for natural underrrotation~%float32  duration            # number of seconds to pause at each stop~%bool     return_to_original  # set to true, if you want to return to original orientation when done~%string   upload_url          # after recording rosbag, automatically upload here~%bool     rm_after_upload     # if set to True, rosbag will be rm'd from turtlebot after successful upload~%string   upload_token        # authorization token for upload server~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoiScanGoal)))
  "Returns full string definition for message of type 'PoiScanGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string[] topics              # list of topics to record~%string   bagfile_name_prefix # output bagfiles will begin with this prefix. Suffixes will be generated like \"_pos0.bag\"~%uint32   num_stops           # number of times to stop during one 360degree rotation~%float32  tune_rotation       # for example, value of 1.05 will overrotate 5% to compensate for natural underrrotation~%float32  duration            # number of seconds to pause at each stop~%bool     return_to_original  # set to true, if you want to return to original orientation when done~%string   upload_url          # after recording rosbag, automatically upload here~%bool     rm_after_upload     # if set to True, rosbag will be rm'd from turtlebot after successful upload~%string   upload_token        # authorization token for upload server~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoiScanGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'bagfile_name_prefix))
     4
     4
     4
     1
     4 (cl:length (cl:slot-value msg 'upload_url))
     1
     4 (cl:length (cl:slot-value msg 'upload_token))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoiScanGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PoiScanGoal
    (cl:cons ':topics (topics msg))
    (cl:cons ':bagfile_name_prefix (bagfile_name_prefix msg))
    (cl:cons ':num_stops (num_stops msg))
    (cl:cons ':tune_rotation (tune_rotation msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':return_to_original (return_to_original msg))
    (cl:cons ':upload_url (upload_url msg))
    (cl:cons ':rm_after_upload (rm_after_upload msg))
    (cl:cons ':upload_token (upload_token msg))
))
