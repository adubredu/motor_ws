; Auto-generated. Do not edit!


(cl:in-package poi_scan-msg)


;//! \htmlinclude PoiScanFeedback.msg.html

(cl:defclass <PoiScanFeedback> (roslisp-msg-protocol:ros-message)
  ((percent_complete
    :reader percent_complete
    :initarg :percent_complete
    :type cl:float
    :initform 0.0))
)

(cl:defclass PoiScanFeedback (<PoiScanFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoiScanFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoiScanFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_scan-msg:<PoiScanFeedback> is deprecated: use poi_scan-msg:PoiScanFeedback instead.")))

(cl:ensure-generic-function 'percent_complete-val :lambda-list '(m))
(cl:defmethod percent_complete-val ((m <PoiScanFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_scan-msg:percent_complete-val is deprecated.  Use poi_scan-msg:percent_complete instead.")
  (percent_complete m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoiScanFeedback>) ostream)
  "Serializes a message object of type '<PoiScanFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percent_complete))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoiScanFeedback>) istream)
  "Deserializes a message object of type '<PoiScanFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percent_complete) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoiScanFeedback>)))
  "Returns string type for a message object of type '<PoiScanFeedback>"
  "poi_scan/PoiScanFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoiScanFeedback)))
  "Returns string type for a message object of type 'PoiScanFeedback"
  "poi_scan/PoiScanFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoiScanFeedback>)))
  "Returns md5sum for a message object of type '<PoiScanFeedback>"
  "d342375c60a5a58d3bc32664070a1368")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoiScanFeedback)))
  "Returns md5sum for a message object of type 'PoiScanFeedback"
  "d342375c60a5a58d3bc32664070a1368")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoiScanFeedback>)))
  "Returns full string definition for message of type '<PoiScanFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%float32 percent_complete~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoiScanFeedback)))
  "Returns full string definition for message of type 'PoiScanFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%float32 percent_complete~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoiScanFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoiScanFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'PoiScanFeedback
    (cl:cons ':percent_complete (percent_complete msg))
))
