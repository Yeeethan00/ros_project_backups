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

class JointStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.publisher = null;
      this.joint = null;
      this.registerValue = null;
      this.coeffsLoaded = null;
      this.bridgeEnabled = null;
      this.motorEnabled = null;
      this.brakeReleased = null;
      this.motorPowerDetected = null;
      this.embeddedMotCom = null;
      this.jointFaulted = null;
    }
    else {
      if (initObj.hasOwnProperty('publisher')) {
        this.publisher = initObj.publisher
      }
      else {
        this.publisher = '';
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
      if (initObj.hasOwnProperty('coeffsLoaded')) {
        this.coeffsLoaded = initObj.coeffsLoaded
      }
      else {
        this.coeffsLoaded = false;
      }
      if (initObj.hasOwnProperty('bridgeEnabled')) {
        this.bridgeEnabled = initObj.bridgeEnabled
      }
      else {
        this.bridgeEnabled = false;
      }
      if (initObj.hasOwnProperty('motorEnabled')) {
        this.motorEnabled = initObj.motorEnabled
      }
      else {
        this.motorEnabled = false;
      }
      if (initObj.hasOwnProperty('brakeReleased')) {
        this.brakeReleased = initObj.brakeReleased
      }
      else {
        this.brakeReleased = false;
      }
      if (initObj.hasOwnProperty('motorPowerDetected')) {
        this.motorPowerDetected = initObj.motorPowerDetected
      }
      else {
        this.motorPowerDetected = false;
      }
      if (initObj.hasOwnProperty('embeddedMotCom')) {
        this.embeddedMotCom = initObj.embeddedMotCom
      }
      else {
        this.embeddedMotCom = false;
      }
      if (initObj.hasOwnProperty('jointFaulted')) {
        this.jointFaulted = initObj.jointFaulted
      }
      else {
        this.jointFaulted = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointStatus
    // Serialize message field [publisher]
    bufferOffset = _serializer.string(obj.publisher, buffer, bufferOffset);
    // Serialize message field [joint]
    bufferOffset = _serializer.string(obj.joint, buffer, bufferOffset);
    // Serialize message field [registerValue]
    bufferOffset = _serializer.uint32(obj.registerValue, buffer, bufferOffset);
    // Serialize message field [coeffsLoaded]
    bufferOffset = _serializer.bool(obj.coeffsLoaded, buffer, bufferOffset);
    // Serialize message field [bridgeEnabled]
    bufferOffset = _serializer.bool(obj.bridgeEnabled, buffer, bufferOffset);
    // Serialize message field [motorEnabled]
    bufferOffset = _serializer.bool(obj.motorEnabled, buffer, bufferOffset);
    // Serialize message field [brakeReleased]
    bufferOffset = _serializer.bool(obj.brakeReleased, buffer, bufferOffset);
    // Serialize message field [motorPowerDetected]
    bufferOffset = _serializer.bool(obj.motorPowerDetected, buffer, bufferOffset);
    // Serialize message field [embeddedMotCom]
    bufferOffset = _serializer.bool(obj.embeddedMotCom, buffer, bufferOffset);
    // Serialize message field [jointFaulted]
    bufferOffset = _serializer.bool(obj.jointFaulted, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointStatus
    let len;
    let data = new JointStatus(null);
    // Deserialize message field [publisher]
    data.publisher = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joint]
    data.joint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [registerValue]
    data.registerValue = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [coeffsLoaded]
    data.coeffsLoaded = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bridgeEnabled]
    data.bridgeEnabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motorEnabled]
    data.motorEnabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brakeReleased]
    data.brakeReleased = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motorPowerDetected]
    data.motorPowerDetected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [embeddedMotCom]
    data.embeddedMotCom = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [jointFaulted]
    data.jointFaulted = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.publisher.length;
    length += object.joint.length;
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/JointStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69537d8fb608e752f0cf704b8738add6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string publisher
    string joint
    uint32 registerValue
    bool coeffsLoaded
    bool bridgeEnabled
    bool motorEnabled
    bool brakeReleased
    bool motorPowerDetected
    bool embeddedMotCom
    bool jointFaulted
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointStatus(null);
    if (msg.publisher !== undefined) {
      resolved.publisher = msg.publisher;
    }
    else {
      resolved.publisher = ''
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

    if (msg.coeffsLoaded !== undefined) {
      resolved.coeffsLoaded = msg.coeffsLoaded;
    }
    else {
      resolved.coeffsLoaded = false
    }

    if (msg.bridgeEnabled !== undefined) {
      resolved.bridgeEnabled = msg.bridgeEnabled;
    }
    else {
      resolved.bridgeEnabled = false
    }

    if (msg.motorEnabled !== undefined) {
      resolved.motorEnabled = msg.motorEnabled;
    }
    else {
      resolved.motorEnabled = false
    }

    if (msg.brakeReleased !== undefined) {
      resolved.brakeReleased = msg.brakeReleased;
    }
    else {
      resolved.brakeReleased = false
    }

    if (msg.motorPowerDetected !== undefined) {
      resolved.motorPowerDetected = msg.motorPowerDetected;
    }
    else {
      resolved.motorPowerDetected = false
    }

    if (msg.embeddedMotCom !== undefined) {
      resolved.embeddedMotCom = msg.embeddedMotCom;
    }
    else {
      resolved.embeddedMotCom = false
    }

    if (msg.jointFaulted !== undefined) {
      resolved.jointFaulted = msg.jointFaulted;
    }
    else {
      resolved.jointFaulted = false
    }

    return resolved;
    }
};

module.exports = JointStatus;
