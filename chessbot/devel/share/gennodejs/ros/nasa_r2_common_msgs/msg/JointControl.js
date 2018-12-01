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

class JointControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.publisher = null;
      this.timeStamp = null;
      this.joint = null;
      this.registerValue = null;
      this.enableBridge = null;
      this.enableMotor = null;
      this.releaseBrake = null;
      this.embeddedMotCom = null;
      this.controlMode = null;
      this.clearFaults = null;
    }
    else {
      if (initObj.hasOwnProperty('publisher')) {
        this.publisher = initObj.publisher
      }
      else {
        this.publisher = '';
      }
      if (initObj.hasOwnProperty('timeStamp')) {
        this.timeStamp = initObj.timeStamp
      }
      else {
        this.timeStamp = 0.0;
      }
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = '';
      }
      if (initObj.hasOwnProperty('registerValue')) {
        this.registerValue = initObj.registerValue
      }
      else {
        this.registerValue = 0;
      }
      if (initObj.hasOwnProperty('enableBridge')) {
        this.enableBridge = initObj.enableBridge
      }
      else {
        this.enableBridge = false;
      }
      if (initObj.hasOwnProperty('enableMotor')) {
        this.enableMotor = initObj.enableMotor
      }
      else {
        this.enableMotor = false;
      }
      if (initObj.hasOwnProperty('releaseBrake')) {
        this.releaseBrake = initObj.releaseBrake
      }
      else {
        this.releaseBrake = false;
      }
      if (initObj.hasOwnProperty('embeddedMotCom')) {
        this.embeddedMotCom = initObj.embeddedMotCom
      }
      else {
        this.embeddedMotCom = false;
      }
      if (initObj.hasOwnProperty('controlMode')) {
        this.controlMode = initObj.controlMode
      }
      else {
        this.controlMode = 0;
      }
      if (initObj.hasOwnProperty('clearFaults')) {
        this.clearFaults = initObj.clearFaults
      }
      else {
        this.clearFaults = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointControl
    // Serialize message field [publisher]
    bufferOffset = _serializer.string(obj.publisher, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.float64(obj.timeStamp, buffer, bufferOffset);
    // Serialize message field [joint]
    bufferOffset = _serializer.string(obj.joint, buffer, bufferOffset);
    // Serialize message field [registerValue]
    bufferOffset = _serializer.uint32(obj.registerValue, buffer, bufferOffset);
    // Serialize message field [enableBridge]
    bufferOffset = _serializer.bool(obj.enableBridge, buffer, bufferOffset);
    // Serialize message field [enableMotor]
    bufferOffset = _serializer.bool(obj.enableMotor, buffer, bufferOffset);
    // Serialize message field [releaseBrake]
    bufferOffset = _serializer.bool(obj.releaseBrake, buffer, bufferOffset);
    // Serialize message field [embeddedMotCom]
    bufferOffset = _serializer.bool(obj.embeddedMotCom, buffer, bufferOffset);
    // Serialize message field [controlMode]
    bufferOffset = _serializer.uint16(obj.controlMode, buffer, bufferOffset);
    // Serialize message field [clearFaults]
    bufferOffset = _serializer.bool(obj.clearFaults, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointControl
    let len;
    let data = new JointControl(null);
    // Deserialize message field [publisher]
    data.publisher = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint]
    data.joint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [registerValue]
    data.registerValue = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [enableBridge]
    data.enableBridge = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enableMotor]
    data.enableMotor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [releaseBrake]
    data.releaseBrake = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [embeddedMotCom]
    data.embeddedMotCom = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [controlMode]
    data.controlMode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [clearFaults]
    data.clearFaults = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.publisher.length;
    length += object.joint.length;
    return length + 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/JointControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e38c02f4ffdedb57646a4576b7e0ccf6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string publisher
    float64 timeStamp
    string joint
    uint32 registerValue
    bool enableBridge
    bool enableMotor
    bool releaseBrake
    bool embeddedMotCom
    uint16 controlMode
    bool clearFaults
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointControl(null);
    if (msg.publisher !== undefined) {
      resolved.publisher = msg.publisher;
    }
    else {
      resolved.publisher = ''
    }

    if (msg.timeStamp !== undefined) {
      resolved.timeStamp = msg.timeStamp;
    }
    else {
      resolved.timeStamp = 0.0
    }

    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = ''
    }

    if (msg.registerValue !== undefined) {
      resolved.registerValue = msg.registerValue;
    }
    else {
      resolved.registerValue = 0
    }

    if (msg.enableBridge !== undefined) {
      resolved.enableBridge = msg.enableBridge;
    }
    else {
      resolved.enableBridge = false
    }

    if (msg.enableMotor !== undefined) {
      resolved.enableMotor = msg.enableMotor;
    }
    else {
      resolved.enableMotor = false
    }

    if (msg.releaseBrake !== undefined) {
      resolved.releaseBrake = msg.releaseBrake;
    }
    else {
      resolved.releaseBrake = false
    }

    if (msg.embeddedMotCom !== undefined) {
      resolved.embeddedMotCom = msg.embeddedMotCom;
    }
    else {
      resolved.embeddedMotCom = false
    }

    if (msg.controlMode !== undefined) {
      resolved.controlMode = msg.controlMode;
    }
    else {
      resolved.controlMode = 0
    }

    if (msg.clearFaults !== undefined) {
      resolved.clearFaults = msg.clearFaults;
    }
    else {
      resolved.clearFaults = false
    }

    return resolved;
    }
};

module.exports = JointControl;
