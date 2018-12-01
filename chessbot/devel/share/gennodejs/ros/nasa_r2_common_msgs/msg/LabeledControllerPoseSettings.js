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

class LabeledControllerPoseSettings {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.originator = null;
      this.maxLinearVelocity = null;
      this.maxRotationalVelocity = null;
      this.maxLinearAcceleration = null;
      this.maxRotationalAcceleration = null;
    }
    else {
      if (initObj.hasOwnProperty('originator')) {
        this.originator = initObj.originator
      }
      else {
        this.originator = '';
      }
      if (initObj.hasOwnProperty('maxLinearVelocity')) {
        this.maxLinearVelocity = initObj.maxLinearVelocity
      }
      else {
        this.maxLinearVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('maxRotationalVelocity')) {
        this.maxRotationalVelocity = initObj.maxRotationalVelocity
      }
      else {
        this.maxRotationalVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('maxLinearAcceleration')) {
        this.maxLinearAcceleration = initObj.maxLinearAcceleration
      }
      else {
        this.maxLinearAcceleration = 0.0;
      }
      if (initObj.hasOwnProperty('maxRotationalAcceleration')) {
        this.maxRotationalAcceleration = initObj.maxRotationalAcceleration
      }
      else {
        this.maxRotationalAcceleration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LabeledControllerPoseSettings
    // Serialize message field [originator]
    bufferOffset = _serializer.string(obj.originator, buffer, bufferOffset);
    // Serialize message field [maxLinearVelocity]
    bufferOffset = _serializer.float64(obj.maxLinearVelocity, buffer, bufferOffset);
    // Serialize message field [maxRotationalVelocity]
    bufferOffset = _serializer.float64(obj.maxRotationalVelocity, buffer, bufferOffset);
    // Serialize message field [maxLinearAcceleration]
    bufferOffset = _serializer.float64(obj.maxLinearAcceleration, buffer, bufferOffset);
    // Serialize message field [maxRotationalAcceleration]
    bufferOffset = _serializer.float64(obj.maxRotationalAcceleration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LabeledControllerPoseSettings
    let len;
    let data = new LabeledControllerPoseSettings(null);
    // Deserialize message field [originator]
    data.originator = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [maxLinearVelocity]
    data.maxLinearVelocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [maxRotationalVelocity]
    data.maxRotationalVelocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [maxLinearAcceleration]
    data.maxLinearAcceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [maxRotationalAcceleration]
    data.maxRotationalAcceleration = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.originator.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/LabeledControllerPoseSettings';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '693211d9c36a5f2d5e074080ca79820b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string originator
    float64 maxLinearVelocity
    float64 maxRotationalVelocity
    float64 maxLinearAcceleration
    float64 maxRotationalAcceleration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LabeledControllerPoseSettings(null);
    if (msg.originator !== undefined) {
      resolved.originator = msg.originator;
    }
    else {
      resolved.originator = ''
    }

    if (msg.maxLinearVelocity !== undefined) {
      resolved.maxLinearVelocity = msg.maxLinearVelocity;
    }
    else {
      resolved.maxLinearVelocity = 0.0
    }

    if (msg.maxRotationalVelocity !== undefined) {
      resolved.maxRotationalVelocity = msg.maxRotationalVelocity;
    }
    else {
      resolved.maxRotationalVelocity = 0.0
    }

    if (msg.maxLinearAcceleration !== undefined) {
      resolved.maxLinearAcceleration = msg.maxLinearAcceleration;
    }
    else {
      resolved.maxLinearAcceleration = 0.0
    }

    if (msg.maxRotationalAcceleration !== undefined) {
      resolved.maxRotationalAcceleration = msg.maxRotationalAcceleration;
    }
    else {
      resolved.maxRotationalAcceleration = 0.0
    }

    return resolved;
    }
};

module.exports = LabeledControllerPoseSettings;
