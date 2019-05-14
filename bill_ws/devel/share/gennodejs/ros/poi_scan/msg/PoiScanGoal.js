// Auto-generated. Do not edit!

// (in-package poi_scan.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PoiScanGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topics = null;
      this.bagfile_name_prefix = null;
      this.num_stops = null;
      this.tune_rotation = null;
      this.duration = null;
      this.return_to_original = null;
      this.upload_url = null;
      this.rm_after_upload = null;
      this.upload_token = null;
    }
    else {
      if (initObj.hasOwnProperty('topics')) {
        this.topics = initObj.topics
      }
      else {
        this.topics = [];
      }
      if (initObj.hasOwnProperty('bagfile_name_prefix')) {
        this.bagfile_name_prefix = initObj.bagfile_name_prefix
      }
      else {
        this.bagfile_name_prefix = '';
      }
      if (initObj.hasOwnProperty('num_stops')) {
        this.num_stops = initObj.num_stops
      }
      else {
        this.num_stops = 0;
      }
      if (initObj.hasOwnProperty('tune_rotation')) {
        this.tune_rotation = initObj.tune_rotation
      }
      else {
        this.tune_rotation = 0.0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
      if (initObj.hasOwnProperty('return_to_original')) {
        this.return_to_original = initObj.return_to_original
      }
      else {
        this.return_to_original = false;
      }
      if (initObj.hasOwnProperty('upload_url')) {
        this.upload_url = initObj.upload_url
      }
      else {
        this.upload_url = '';
      }
      if (initObj.hasOwnProperty('rm_after_upload')) {
        this.rm_after_upload = initObj.rm_after_upload
      }
      else {
        this.rm_after_upload = false;
      }
      if (initObj.hasOwnProperty('upload_token')) {
        this.upload_token = initObj.upload_token
      }
      else {
        this.upload_token = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoiScanGoal
    // Serialize message field [topics]
    bufferOffset = _arraySerializer.string(obj.topics, buffer, bufferOffset, null);
    // Serialize message field [bagfile_name_prefix]
    bufferOffset = _serializer.string(obj.bagfile_name_prefix, buffer, bufferOffset);
    // Serialize message field [num_stops]
    bufferOffset = _serializer.uint32(obj.num_stops, buffer, bufferOffset);
    // Serialize message field [tune_rotation]
    bufferOffset = _serializer.float32(obj.tune_rotation, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.float32(obj.duration, buffer, bufferOffset);
    // Serialize message field [return_to_original]
    bufferOffset = _serializer.bool(obj.return_to_original, buffer, bufferOffset);
    // Serialize message field [upload_url]
    bufferOffset = _serializer.string(obj.upload_url, buffer, bufferOffset);
    // Serialize message field [rm_after_upload]
    bufferOffset = _serializer.bool(obj.rm_after_upload, buffer, bufferOffset);
    // Serialize message field [upload_token]
    bufferOffset = _serializer.string(obj.upload_token, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoiScanGoal
    let len;
    let data = new PoiScanGoal(null);
    // Deserialize message field [topics]
    data.topics = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [bagfile_name_prefix]
    data.bagfile_name_prefix = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [num_stops]
    data.num_stops = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [tune_rotation]
    data.tune_rotation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [return_to_original]
    data.return_to_original = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [upload_url]
    data.upload_url = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rm_after_upload]
    data.rm_after_upload = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [upload_token]
    data.upload_token = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.topics.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.bagfile_name_prefix.length;
    length += object.upload_url.length;
    length += object.upload_token.length;
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'poi_scan/PoiScanGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab03635573f377c07ab715379686bef4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define the goal
    string[] topics              # list of topics to record
    string   bagfile_name_prefix # output bagfiles will begin with this prefix. Suffixes will be generated like "_pos0.bag"
    uint32   num_stops           # number of times to stop during one 360degree rotation
    float32  tune_rotation       # for example, value of 1.05 will overrotate 5% to compensate for natural underrrotation
    float32  duration            # number of seconds to pause at each stop
    bool     return_to_original  # set to true, if you want to return to original orientation when done
    string   upload_url          # after recording rosbag, automatically upload here
    bool     rm_after_upload     # if set to True, rosbag will be rm'd from turtlebot after successful upload
    string   upload_token        # authorization token for upload server
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoiScanGoal(null);
    if (msg.topics !== undefined) {
      resolved.topics = msg.topics;
    }
    else {
      resolved.topics = []
    }

    if (msg.bagfile_name_prefix !== undefined) {
      resolved.bagfile_name_prefix = msg.bagfile_name_prefix;
    }
    else {
      resolved.bagfile_name_prefix = ''
    }

    if (msg.num_stops !== undefined) {
      resolved.num_stops = msg.num_stops;
    }
    else {
      resolved.num_stops = 0
    }

    if (msg.tune_rotation !== undefined) {
      resolved.tune_rotation = msg.tune_rotation;
    }
    else {
      resolved.tune_rotation = 0.0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    if (msg.return_to_original !== undefined) {
      resolved.return_to_original = msg.return_to_original;
    }
    else {
      resolved.return_to_original = false
    }

    if (msg.upload_url !== undefined) {
      resolved.upload_url = msg.upload_url;
    }
    else {
      resolved.upload_url = ''
    }

    if (msg.rm_after_upload !== undefined) {
      resolved.rm_after_upload = msg.rm_after_upload;
    }
    else {
      resolved.rm_after_upload = false
    }

    if (msg.upload_token !== undefined) {
      resolved.upload_token = msg.upload_token;
    }
    else {
      resolved.upload_token = ''
    }

    return resolved;
    }
};

module.exports = PoiScanGoal;
