; Auto-generated. Do not edit!


(cl:in-package poi_name_locator-srv)


;//! \htmlinclude PoiNameLocator-request.msg.html

(cl:defclass <PoiNameLocator-request> (roslisp-msg-protocol:ros-message)
  ((poi_name
    :reader poi_name
    :initarg :poi_name
    :type cl:string
    :initform ""))
)

(cl:defclass PoiNameLocator-request (<PoiNameLocator-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoiNameLocator-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoiNameLocator-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_name_locator-srv:<PoiNameLocator-request> is deprecated: use poi_name_locator-srv:PoiNameLocator-request instead.")))

(cl:ensure-generic-function 'poi_name-val :lambda-list '(m))
(cl:defmethod poi_name-val ((m <PoiNameLocator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_name_locator-srv:poi_name-val is deprecated.  Use poi_name_locator-srv:poi_name instead.")
  (poi_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoiNameLocator-request>) ostream)
  "Serializes a message object of type '<PoiNameLocator-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'poi_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'poi_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoiNameLocator-request>) istream)
  "Deserializes a message object of type '<PoiNameLocator-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'poi_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'poi_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoiNameLocator-request>)))
  "Returns string type for a service object of type '<PoiNameLocator-request>"
  "poi_name_locator/PoiNameLocatorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoiNameLocator-request)))
  "Returns string type for a service object of type 'PoiNameLocator-request"
  "poi_name_locator/PoiNameLocatorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoiNameLocator-request>)))
  "Returns md5sum for a message object of type '<PoiNameLocator-request>"
  "91b7101264f88cf4becf629edfa6879e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoiNameLocator-request)))
  "Returns md5sum for a message object of type 'PoiNameLocator-request"
  "91b7101264f88cf4becf629edfa6879e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoiNameLocator-request>)))
  "Returns full string definition for message of type '<PoiNameLocator-request>"
  (cl:format cl:nil "string poi_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoiNameLocator-request)))
  "Returns full string definition for message of type 'PoiNameLocator-request"
  (cl:format cl:nil "string poi_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoiNameLocator-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'poi_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoiNameLocator-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PoiNameLocator-request
    (cl:cons ':poi_name (poi_name msg))
))
;//! \htmlinclude PoiNameLocator-response.msg.html

(cl:defclass <PoiNameLocator-response> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass PoiNameLocator-response (<PoiNameLocator-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoiNameLocator-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoiNameLocator-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_name_locator-srv:<PoiNameLocator-response> is deprecated: use poi_name_locator-srv:PoiNameLocator-response instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PoiNameLocator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_name_locator-srv:position-val is deprecated.  Use poi_name_locator-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoiNameLocator-response>) ostream)
  "Serializes a message object of type '<PoiNameLocator-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoiNameLocator-response>) istream)
  "Deserializes a message object of type '<PoiNameLocator-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoiNameLocator-response>)))
  "Returns string type for a service object of type '<PoiNameLocator-response>"
  "poi_name_locator/PoiNameLocatorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoiNameLocator-response)))
  "Returns string type for a service object of type 'PoiNameLocator-response"
  "poi_name_locator/PoiNameLocatorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoiNameLocator-response>)))
  "Returns md5sum for a message object of type '<PoiNameLocator-response>"
  "91b7101264f88cf4becf629edfa6879e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoiNameLocator-response)))
  "Returns md5sum for a message object of type 'PoiNameLocator-response"
  "91b7101264f88cf4becf629edfa6879e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoiNameLocator-response>)))
  "Returns full string definition for message of type '<PoiNameLocator-response>"
  (cl:format cl:nil "geometry_msgs/Point position~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoiNameLocator-response)))
  "Returns full string definition for message of type 'PoiNameLocator-response"
  (cl:format cl:nil "geometry_msgs/Point position~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoiNameLocator-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoiNameLocator-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PoiNameLocator-response
    (cl:cons ':position (position msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PoiNameLocator)))
  'PoiNameLocator-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PoiNameLocator)))
  'PoiNameLocator-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoiNameLocator)))
  "Returns string type for a service object of type '<PoiNameLocator>"
  "poi_name_locator/PoiNameLocator")