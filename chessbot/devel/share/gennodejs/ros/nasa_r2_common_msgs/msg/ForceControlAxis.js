// Auto-generated. Do not edit!

// (in-package nasa_r2_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ForceControlAxis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.axis = null;
      this.magnitude = null;
    }
    else {
      if (initObj.hasOwnProperty('axis')) {
        this.axis = initObj.axis
      }
      else {
        this.axis = [];
      }
      if (initObj.hasOwnProperty('magnitude')) {
        this.magnitude = initObj.magnitude
      }
      else {
        this.magnitude = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ForceControlAxis
    // Serialize message field [axis]
    bufferOffset = _arraySerializer.uint8(obj.axis, buffer, bufferOffset, null);
    // Serialize message field [magnitude]
    bufferOffset = _arraySerializer.float32(obj.magnitude, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ForceControlAxis
    let len;
    let data = new ForceControlAxis(null);
    // Deserialize message field [axis]
    data.axis = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [magnitude]
    data.magnitude = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.axis.length;
    length += 4 * object.magnitude.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/ForceControlAxis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8efe484fba93bec26ea428bb18a05f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] axis
    float32[] magnitude
    
    uint8 X       = 0
    uint8 Y       = 1
    uint8 Z       = 2
    uint8 ROLL    = 3
    uint8 PITCH   = 4
    uint8 YAW     = 5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ForceControlAxis(null);
    if (msg.axis !== undefined) {
      resolved.axis = msg.axis;
    }
    else {
      resolved.axis = []
    }

    if (msg.magnitude !== undefined) {
      resolved.magnitude = msg.magnitude;
    }
    else {
      resolved.magnitude = []
    }

    return resolved;
    }
};

// Constants for message
ForceControlAxis.Constants = {
  X: 0,
  Y: 1,
  Z: 2,
  ROLL: 3,
  PITCH: 4,
  YAW: 5,
}

module.exports = ForceControlAxis;
