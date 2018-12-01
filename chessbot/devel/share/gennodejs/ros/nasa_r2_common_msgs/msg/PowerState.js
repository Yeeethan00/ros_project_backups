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

class PowerState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerState
    // Serialize message field [data]
    bufferOffset = _serializer.uint8(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerState
    let len;
    let data = new PowerState(null);
    // Deserialize message field [data]
    data.data = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/PowerState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '584ec0c2e2cf9b94d0b9da5027668714';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 data
    uint8 UNKNOWN       = 0
    uint8 POWER_OFF     = 1
    uint8 LOGIC_POWER   = 2
    uint8 MOTOR_POWER   = 3
    uint8 MOTOR48_POWER = 4
    uint8 MOTOR96_POWER = 5
    uint8 FAULTED       = 6
    uint8 TRANSITIONING = 7
    uint8 IGNORE        = 8
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerState(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0
    }

    return resolved;
    }
};

// Constants for message
PowerState.Constants = {
  UNKNOWN: 0,
  POWER_OFF: 1,
  LOGIC_POWER: 2,
  MOTOR_POWER: 3,
  MOTOR48_POWER: 4,
  MOTOR96_POWER: 5,
  FAULTED: 6,
  TRANSITIONING: 7,
  IGNORE: 8,
}

module.exports = PowerState;
