// Auto-generated. Do not edit!

// (in-package nasa_r2_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointControlData = require('./JointControlData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class JointControlDataArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.joint = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = [];
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointControlDataArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [joint]
    bufferOffset = _arraySerializer.string(obj.joint, buffer, bufferOffset, null);
    // Serialize message field [data]
    // Serialize the length for message field [data]
    bufferOffset = _serializer.uint32(obj.data.length, buffer, bufferOffset);
    obj.data.forEach((val) => {
      bufferOffset = JointControlData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointControlDataArray
    let len;
    let data = new JointControlDataArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint]
    data.joint = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [data]
    // Deserialize array length for message field [data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.data[i] = JointControlData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.joint.forEach((val) => {
      length += 4 + val.length;
    });
    length += 5 * object.data.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/JointControlDataArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96b9d2bc74ad5b1c503caf2252599837';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string[] joint
    JointControlData[] data
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: nasa_r2_common_msgs/JointControlData
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
    const resolved = new JointControlDataArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = []
    }

    if (msg.data !== undefined) {
      resolved.data = new Array(msg.data.length);
      for (let i = 0; i < resolved.data.length; ++i) {
        resolved.data[i] = JointControlData.Resolve(msg.data[i]);
      }
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = JointControlDataArray;
