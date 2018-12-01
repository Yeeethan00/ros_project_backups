// Auto-generated. Do not edit!

// (in-package nasa_r2_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointControlMode = require('./JointControlMode.js');
let JointControlCommandMode = require('./JointControlCommandMode.js');
let JointControlCalibrationMode = require('./JointControlCalibrationMode.js');
let JointControlClearFaultMode = require('./JointControlClearFaultMode.js');
let JointControlCoeffState = require('./JointControlCoeffState.js');

//-----------------------------------------------------------

class JointControlData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.controlMode = null;
      this.commandMode = null;
      this.calibrationMode = null;
      this.clearFaultMode = null;
      this.coeffState = null;
    }
    else {
      if (initObj.hasOwnProperty('controlMode')) {
        this.controlMode = initObj.controlMode
      }
      else {
        this.controlMode = new JointControlMode();
      }
      if (initObj.hasOwnProperty('commandMode')) {
        this.commandMode = initObj.commandMode
      }
      else {
        this.commandMode = new JointControlCommandMode();
      }
      if (initObj.hasOwnProperty('calibrationMode')) {
        this.calibrationMode = initObj.calibrationMode
      }
      else {
        this.calibrationMode = new JointControlCalibrationMode();
      }
      if (initObj.hasOwnProperty('clearFaultMode')) {
        this.clearFaultMode = initObj.clearFaultMode
      }
      else {
        this.clearFaultMode = new JointControlClearFaultMode();
      }
      if (initObj.hasOwnProperty('coeffState')) {
        this.coeffState = initObj.coeffState
      }
      else {
        this.coeffState = new JointControlCoeffState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointControlData
    // Serialize message field [controlMode]
    bufferOffset = JointControlMode.serialize(obj.controlMode, buffer, bufferOffset);
    // Serialize message field [commandMode]
    bufferOffset = JointControlCommandMode.serialize(obj.commandMode, buffer, bufferOffset);
    // Serialize message field [calibrationMode]
    bufferOffset = JointControlCalibrationMode.serialize(obj.calibrationMode, buffer, bufferOffset);
    // Serialize message field [clearFaultMode]
    bufferOffset = JointControlClearFaultMode.serialize(obj.clearFaultMode, buffer, bufferOffset);
    // Serialize message field [coeffState]
    bufferOffset = JointControlCoeffState.serialize(obj.coeffState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointControlData
    let len;
    let data = new JointControlData(null);
    // Deserialize message field [controlMode]
    data.controlMode = JointControlMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [commandMode]
    data.commandMode = JointControlCommandMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [calibrationMode]
    data.calibrationMode = JointControlCalibrationMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [clearFaultMode]
    data.clearFaultMode = JointControlClearFaultMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [coeffState]
    data.coeffState = JointControlCoeffState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/JointControlData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fedf678b0c3640f2a0cd4265c858b481';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    JointControlMode            controlMode
    JointControlCommandMode     commandMode
    JointControlCalibrationMode calibrationMode
    JointControlClearFaultMode  clearFaultMode
    JointControlCoeffState      coeffState
    
    ================================================================================
    MSG: nasa_r2_common_msgs/JointControlMode
    uint8 state
    uint8 IGNORE     = 0
    uint8 INVALID    = 1
    uint8 BOOTLOADER = 2
    uint8 FAULTED    = 3
    uint8 SAFE       = 4
    uint8 OFF        = 5
    uint8 PARK       = 6
    uint8 NEUTRAL    = 7
    uint8 DRIVE      = 8
    
    ================================================================================
    MSG: nasa_r2_common_msgs/JointControlCommandMode
    uint8 state
    uint8 IGNORE          = 0
    uint8 INVALID         = 1
    uint8 MOTCOM          = 2
    uint8 MULTILOOPSTEP   = 3
    uint8 MULTILOOPSMOOTH = 4
    uint8 ACTUATOR        = 5
    uint8 STALLMODE       = 6
    
    ================================================================================
    MSG: nasa_r2_common_msgs/JointControlCalibrationMode
    uint8 state
    uint8 IGNORE       = 0
    uint8 DISABLE      = 1
    uint8 ENABLE       = 2
    uint8 UNCALIBRATED = 3
    
    ================================================================================
    MSG: nasa_r2_common_msgs/JointControlClearFaultMode
    uint8 state
    uint8 IGNORE  = 0
    uint8 DISABLE = 1
    uint8 ENABLE  = 2
    
    ================================================================================
    MSG: nasa_r2_common_msgs/JointControlCoeffState
    uint8 state
    uint8 NOTLOADED = 0
    uint8 LOADED    = 1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointControlData(null);
    if (msg.controlMode !== undefined) {
      resolved.controlMode = JointControlMode.Resolve(msg.controlMode)
    }
    else {
      resolved.controlMode = new JointControlMode()
    }

    if (msg.commandMode !== undefined) {
      resolved.commandMode = JointControlCommandMode.Resolve(msg.commandMode)
    }
    else {
      resolved.commandMode = new JointControlCommandMode()
    }

    if (msg.calibrationMode !== undefined) {
      resolved.calibrationMode = JointControlCalibrationMode.Resolve(msg.calibrationMode)
    }
    else {
      resolved.calibrationMode = new JointControlCalibrationMode()
    }

    if (msg.clearFaultMode !== undefined) {
      resolved.clearFaultMode = JointControlClearFaultMode.Resolve(msg.clearFaultMode)
    }
    else {
      resolved.clearFaultMode = new JointControlClearFaultMode()
    }

    if (msg.coeffState !== undefined) {
      resolved.coeffState = JointControlCoeffState.Resolve(msg.coeffState)
    }
    else {
      resolved.coeffState = new JointControlCoeffState()
    }

    return resolved;
    }
};

module.exports = JointControlData;
