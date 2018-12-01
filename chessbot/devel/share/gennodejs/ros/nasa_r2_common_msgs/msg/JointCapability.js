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

class JointCapability {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.positionLimitMax = null;
      this.positionLimitMin = null;
      this.torqueLimit = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('positionLimitMax')) {
        this.positionLimitMax = initObj.positionLimitMax
      }
      else {
        this.positionLimitMax = [];
      }
      if (initObj.hasOwnProperty('positionLimitMin')) {
        this.positionLimitMin = initObj.positionLimitMin
      }
      else {
        this.positionLimitMin = [];
      }
      if (initObj.hasOwnProperty('torqueLimit')) {
        this.torqueLimit = initObj.torqueLimit
      }
      else {
        this.torqueLimit = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointCapability
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [positionLimitMax]
    bufferOffset = _arraySerializer.float64(obj.positionLimitMax, buffer, bufferOffset, null);
    // Serialize message field [positionLimitMin]
    bufferOffset = _arraySerializer.float64(obj.positionLimitMin, buffer, bufferOffset, null);
    // Serialize message field [torqueLimit]
    bufferOffset = _arraySerializer.float64(obj.torqueLimit, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointCapability
    let len;
    let data = new JointCapability(null);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [positionLimitMax]
    data.positionLimitMax = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [positionLimitMin]
    data.positionLimitMin = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [torqueLimit]
    data.torqueLimit = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.positionLimitMax.length;
    length += 8 * object.positionLimitMin.length;
    length += 8 * object.torqueLimit.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/JointCapability';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '40d391c05ffb602d44b6aec475271b97';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] name
    float64[] positionLimitMax
    float64[] positionLimitMin
    float64[] torqueLimit
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointCapability(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.positionLimitMax !== undefined) {
      resolved.positionLimitMax = msg.positionLimitMax;
    }
    else {
      resolved.positionLimitMax = []
    }

    if (msg.positionLimitMin !== undefined) {
      resolved.positionLimitMin = msg.positionLimitMin;
    }
    else {
      resolved.positionLimitMin = []
    }

    if (msg.torqueLimit !== undefined) {
      resolved.torqueLimit = msg.torqueLimit;
    }
    else {
      resolved.torqueLimit = []
    }

    return resolved;
    }
};

module.exports = JointCapability;
