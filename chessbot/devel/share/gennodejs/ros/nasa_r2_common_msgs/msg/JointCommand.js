// Auto-generated. Do not edit!

// (in-package nasa_r2_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class JointCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.desiredPosition = null;
      this.desiredPositionVelocityLimit = null;
      this.feedForwardTorque = null;
      this.proportionalGain = null;
      this.derivativeGain = null;
      this.integralGain = null;
      this.positionLoopTorqueLimit = null;
      this.positionLoopWindupLimit = null;
      this.torqueLoopVelocityLimit = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('desiredPosition')) {
        this.desiredPosition = initObj.desiredPosition
      }
      else {
        this.desiredPosition = [];
      }
      if (initObj.hasOwnProperty('desiredPositionVelocityLimit')) {
        this.desiredPositionVelocityLimit = initObj.desiredPositionVelocityLimit
      }
      else {
        this.desiredPositionVelocityLimit = [];
      }
      if (initObj.hasOwnProperty('feedForwardTorque')) {
        this.feedForwardTorque = initObj.feedForwardTorque
      }
      else {
        this.feedForwardTorque = [];
      }
      if (initObj.hasOwnProperty('proportionalGain')) {
        this.proportionalGain = initObj.proportionalGain
      }
      else {
        this.proportionalGain = [];
      }
      if (initObj.hasOwnProperty('derivativeGain')) {
        this.derivativeGain = initObj.derivativeGain
      }
      else {
        this.derivativeGain = [];
      }
      if (initObj.hasOwnProperty('integralGain')) {
        this.integralGain = initObj.integralGain
      }
      else {
        this.integralGain = [];
      }
      if (initObj.hasOwnProperty('positionLoopTorqueLimit')) {
        this.positionLoopTorqueLimit = initObj.positionLoopTorqueLimit
      }
      else {
        this.positionLoopTorqueLimit = [];
      }
      if (initObj.hasOwnProperty('positionLoopWindupLimit')) {
        this.positionLoopWindupLimit = initObj.positionLoopWindupLimit
      }
      else {
        this.positionLoopWindupLimit = [];
      }
      if (initObj.hasOwnProperty('torqueLoopVelocityLimit')) {
        this.torqueLoopVelocityLimit = initObj.torqueLoopVelocityLimit
      }
      else {
        this.torqueLoopVelocityLimit = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [desiredPosition]
    bufferOffset = _arraySerializer.float64(obj.desiredPosition, buffer, bufferOffset, null);
    // Serialize message field [desiredPositionVelocityLimit]
    bufferOffset = _arraySerializer.float64(obj.desiredPositionVelocityLimit, buffer, bufferOffset, null);
    // Serialize message field [feedForwardTorque]
    bufferOffset = _arraySerializer.float64(obj.feedForwardTorque, buffer, bufferOffset, null);
    // Serialize message field [proportionalGain]
    bufferOffset = _arraySerializer.float64(obj.proportionalGain, buffer, bufferOffset, null);
    // Serialize message field [derivativeGain]
    bufferOffset = _arraySerializer.float64(obj.derivativeGain, buffer, bufferOffset, null);
    // Serialize message field [integralGain]
    bufferOffset = _arraySerializer.float64(obj.integralGain, buffer, bufferOffset, null);
    // Serialize message field [positionLoopTorqueLimit]
    bufferOffset = _arraySerializer.float64(obj.positionLoopTorqueLimit, buffer, bufferOffset, null);
    // Serialize message field [positionLoopWindupLimit]
    bufferOffset = _arraySerializer.float64(obj.positionLoopWindupLimit, buffer, bufferOffset, null);
    // Serialize message field [torqueLoopVelocityLimit]
    bufferOffset = _arraySerializer.float64(obj.torqueLoopVelocityLimit, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointCommand
    let len;
    let data = new JointCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [desiredPosition]
    data.desiredPosition = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [desiredPositionVelocityLimit]
    data.desiredPositionVelocityLimit = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [feedForwardTorque]
    data.feedForwardTorque = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [proportionalGain]
    data.proportionalGain = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [derivativeGain]
    data.derivativeGain = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [integralGain]
    data.integralGain = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [positionLoopTorqueLimit]
    data.positionLoopTorqueLimit = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [positionLoopWindupLimit]
    data.positionLoopWindupLimit = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [torqueLoopVelocityLimit]
    data.torqueLoopVelocityLimit = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.desiredPosition.length;
    length += 8 * object.desiredPositionVelocityLimit.length;
    length += 8 * object.feedForwardTorque.length;
    length += 8 * object.proportionalGain.length;
    length += 8 * object.derivativeGain.length;
    length += 8 * object.integralGain.length;
    length += 8 * object.positionLoopTorqueLimit.length;
    length += 8 * object.positionLoopWindupLimit.length;
    length += 8 * object.torqueLoopVelocityLimit.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/JointCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c56e7e90d9ba9be819e9e813c2544894';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string[] name
    float64[] desiredPosition
    float64[] desiredPositionVelocityLimit
    float64[] feedForwardTorque
    float64[] proportionalGain
    float64[] derivativeGain
    float64[] integralGain
    float64[] positionLoopTorqueLimit
    float64[] positionLoopWindupLimit
    float64[] torqueLoopVelocityLimit
    
    string FULL           =full
    string GRAVITY        =gravity
    string INERTIA        =inertia
    string NONE           =none
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.desiredPosition !== undefined) {
      resolved.desiredPosition = msg.desiredPosition;
    }
    else {
      resolved.desiredPosition = []
    }

    if (msg.desiredPositionVelocityLimit !== undefined) {
      resolved.desiredPositionVelocityLimit = msg.desiredPositionVelocityLimit;
    }
    else {
      resolved.desiredPositionVelocityLimit = []
    }

    if (msg.feedForwardTorque !== undefined) {
      resolved.feedForwardTorque = msg.feedForwardTorque;
    }
    else {
      resolved.feedForwardTorque = []
    }

    if (msg.proportionalGain !== undefined) {
      resolved.proportionalGain = msg.proportionalGain;
    }
    else {
      resolved.proportionalGain = []
    }

    if (msg.derivativeGain !== undefined) {
      resolved.derivativeGain = msg.derivativeGain;
    }
    else {
      resolved.derivativeGain = []
    }

    if (msg.integralGain !== undefined) {
      resolved.integralGain = msg.integralGain;
    }
    else {
      resolved.integralGain = []
    }

    if (msg.positionLoopTorqueLimit !== undefined) {
      resolved.positionLoopTorqueLimit = msg.positionLoopTorqueLimit;
    }
    else {
      resolved.positionLoopTorqueLimit = []
    }

    if (msg.positionLoopWindupLimit !== undefined) {
      resolved.positionLoopWindupLimit = msg.positionLoopWindupLimit;
    }
    else {
      resolved.positionLoopWindupLimit = []
    }

    if (msg.torqueLoopVelocityLimit !== undefined) {
      resolved.torqueLoopVelocityLimit = msg.torqueLoopVelocityLimit;
    }
    else {
      resolved.torqueLoopVelocityLimit = []
    }

    return resolved;
    }
};

// Constants for message
JointCommand.Constants = {
  FULL: 'full',
  GRAVITY: 'gravity',
  INERTIA: 'inertia',
  NONE: 'none',
}

module.exports = JointCommand;
