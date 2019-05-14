// Auto-generated. Do not edit!

// (in-package poi_name_locator.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PoiNameLocatorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.poi_name = null;
    }
    else {
      if (initObj.hasOwnProperty('poi_name')) {
        this.poi_name = initObj.poi_name
      }
      else {
        this.poi_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoiNameLocatorRequest
    // Serialize message field [poi_name]
    bufferOffset = _serializer.string(obj.poi_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoiNameLocatorRequest
    let len;
    let data = new PoiNameLocatorRequest(null);
    // Deserialize message field [poi_name]
    data.poi_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.poi_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poi_name_locator/PoiNameLocatorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf0217b1043bf59a315e33a82128608a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string poi_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoiNameLocatorRequest(null);
    if (msg.poi_name !== undefined) {
      resolved.poi_name = msg.poi_name;
    }
    else {
      resolved.poi_name = ''
    }

    return resolved;
    }
};

class PoiNameLocatorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoiNameLocatorResponse
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoiNameLocatorResponse
    let len;
    let data = new PoiNameLocatorResponse(null);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poi_name_locator/PoiNameLocatorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7bb0ef028c744b081acdc57743b11d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point position
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoiNameLocatorResponse(null);
    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = {
  Request: PoiNameLocatorRequest,
  Response: PoiNameLocatorResponse,
  md5sum() { return '91b7101264f88cf4becf629edfa6879e'; },
  datatype() { return 'poi_name_locator/PoiNameLocator'; }
};
