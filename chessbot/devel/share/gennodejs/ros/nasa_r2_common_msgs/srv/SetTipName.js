// Auto-generated. Do not edit!

// (in-package nasa_r2_common_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetTipNameRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arm_name = null;
      this.tip_name = null;
    }
    else {
      if (initObj.hasOwnProperty('arm_name')) {
        this.arm_name = initObj.arm_name
      }
      else {
        this.arm_name = '';
      }
      if (initObj.hasOwnProperty('tip_name')) {
        this.tip_name = initObj.tip_name
      }
      else {
        this.tip_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTipNameRequest
    // Serialize message field [arm_name]
    bufferOffset = _serializer.string(obj.arm_name, buffer, bufferOffset);
    // Serialize message field [tip_name]
    bufferOffset = _serializer.string(obj.tip_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTipNameRequest
    let len;
    let data = new SetTipNameRequest(null);
    // Deserialize message field [arm_name]
    data.arm_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tip_name]
    data.tip_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.arm_name.length;
    length += object.tip_name.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nasa_r2_common_msgs/SetTipNameRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c684d7fb2263cfca4ef8a63cdba9ef5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string arm_name
    string tip_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTipNameRequest(null);
    if (msg.arm_name !== undefined) {
      resolved.arm_name = msg.arm_name;
    }
    else {
      resolved.arm_name = ''
    }

    if (msg.tip_name !== undefined) {
      resolved.tip_name = msg.tip_name;
    }
    else {
      resolved.tip_name = ''
    }

    return resolved;
    }
};

class SetTipNameResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTipNameResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTipNameResponse
    let len;
    let data = new SetTipNameResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nasa_r2_common_msgs/SetTipNameResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTipNameResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetTipNameRequest,
  Response: SetTipNameResponse,
  md5sum() { return '04993edddcf0571ebbde195b80424722'; },
  datatype() { return 'nasa_r2_common_msgs/SetTipName'; }
};
