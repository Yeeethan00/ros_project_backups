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

class PoseCommandParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.maxLinVel = null;
      this.maxRotVel = null;
    }
    else {
      if (initObj.hasOwnProperty('maxLinVel')) {
        this.maxLinVel = initObj.maxLinVel
      }
      else {
        this.maxLinVel = 0.0;
      }
      if (initObj.hasOwnProperty('maxRotVel')) {
        this.maxRotVel = initObj.maxRotVel
      }
      else {
        this.maxRotVel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseCommandParams
    // Serialize message field [maxLinVel]
    bufferOffset = _serializer.float32(obj.maxLinVel, buffer, bufferOffset);
    // Serialize message field [maxRotVel]
    bufferOffset = _serializer.float32(obj.maxRotVel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseCommandParams
    let len;
    let data = new PoseCommandParams(null);
    // Deserialize message field [maxLinVel]
    data.maxLinVel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [maxRotVel]
    data.maxRotVel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/PoseCommandParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a159026142e288942cb08238d17789db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 maxLinVel
    float32 maxRotVel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseCommandParams(null);
    if (msg.maxLinVel !== undefined) {
      resolved.maxLinVel = msg.maxLinVel;
    }
    else {
      resolved.maxLinVel = 0.0
    }

    if (msg.maxRotVel !== undefined) {
      resolved.maxRotVel = msg.maxRotVel;
    }
    else {
      resolved.maxRotVel = 0.0
    }

    return resolved;
    }
};

module.exports = PoseCommandParams;
