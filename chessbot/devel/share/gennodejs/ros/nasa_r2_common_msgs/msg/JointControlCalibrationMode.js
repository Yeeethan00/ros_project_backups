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

class JointControlCalibrationMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointControlCalibrationMode
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointControlCalibrationMode
    let len;
    let data = new JointControlCalibrationMode(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/JointControlCalibrationMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '37d6fda8e16d375dbb150fda1a045756';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 state
    uint8 IGNORE       = 0
    uint8 DISABLE      = 1
    uint8 ENABLE       = 2
    uint8 UNCALIBRATED = 3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointControlCalibrationMode(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
JointControlCalibrationMode.Constants = {
  IGNORE: 0,
  DISABLE: 1,
  ENABLE: 2,
  UNCALIBRATED: 3,
}

module.exports = JointControlCalibrationMode;
