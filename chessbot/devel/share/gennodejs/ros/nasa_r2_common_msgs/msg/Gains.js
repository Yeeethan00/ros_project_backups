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

class Gains {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_names = null;
      this.naturalFreq = null;
      this.dampingRatio = null;
      this.K = null;
      this.D = null;
      this.I = null;
      this.windupLimit = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('naturalFreq')) {
        this.naturalFreq = initObj.naturalFreq
      }
      else {
        this.naturalFreq = [];
      }
      if (initObj.hasOwnProperty('dampingRatio')) {
        this.dampingRatio = initObj.dampingRatio
      }
      else {
        this.dampingRatio = [];
      }
      if (initObj.hasOwnProperty('K')) {
        this.K = initObj.K
      }
      else {
        this.K = [];
      }
      if (initObj.hasOwnProperty('D')) {
        this.D = initObj.D
      }
      else {
        this.D = [];
      }
      if (initObj.hasOwnProperty('I')) {
        this.I = initObj.I
      }
      else {
        this.I = [];
      }
      if (initObj.hasOwnProperty('windupLimit')) {
        this.windupLimit = initObj.windupLimit
      }
      else {
        this.windupLimit = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gains
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [naturalFreq]
    bufferOffset = _arraySerializer.float64(obj.naturalFreq, buffer, bufferOffset, null);
    // Serialize message field [dampingRatio]
    bufferOffset = _arraySerializer.float64(obj.dampingRatio, buffer, bufferOffset, null);
    // Serialize message field [K]
    bufferOffset = _arraySerializer.float64(obj.K, buffer, bufferOffset, null);
    // Serialize message field [D]
    bufferOffset = _arraySerializer.float64(obj.D, buffer, bufferOffset, null);
    // Serialize message field [I]
    bufferOffset = _arraySerializer.float64(obj.I, buffer, bufferOffset, null);
    // Serialize message field [windupLimit]
    bufferOffset = _arraySerializer.float64(obj.windupLimit, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gains
    let len;
    let data = new Gains(null);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [naturalFreq]
    data.naturalFreq = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [dampingRatio]
    data.dampingRatio = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [K]
    data.K = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [D]
    data.D = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [I]
    data.I = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [windupLimit]
    data.windupLimit = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joint_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.naturalFreq.length;
    length += 8 * object.dampingRatio.length;
    length += 8 * object.K.length;
    length += 8 * object.D.length;
    length += 8 * object.I.length;
    length += 8 * object.windupLimit.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/Gains';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f78899cbb8067fadfd895405ba5d6742';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] joint_names
    float64[] naturalFreq
    float64[] dampingRatio
    float64[] K
    float64[] D
    float64[] I
    float64[] windupLimit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Gains(null);
    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.naturalFreq !== undefined) {
      resolved.naturalFreq = msg.naturalFreq;
    }
    else {
      resolved.naturalFreq = []
    }

    if (msg.dampingRatio !== undefined) {
      resolved.dampingRatio = msg.dampingRatio;
    }
    else {
      resolved.dampingRatio = []
    }

    if (msg.K !== undefined) {
      resolved.K = msg.K;
    }
    else {
      resolved.K = []
    }

    if (msg.D !== undefined) {
      resolved.D = msg.D;
    }
    else {
      resolved.D = []
    }

    if (msg.I !== undefined) {
      resolved.I = msg.I;
    }
    else {
      resolved.I = []
    }

    if (msg.windupLimit !== undefined) {
      resolved.windupLimit = msg.windupLimit;
    }
    else {
      resolved.windupLimit = []
    }

    return resolved;
    }
};

module.exports = Gains;
