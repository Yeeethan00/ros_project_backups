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

class PDMCStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.publisher = null;
      this.registerValue = null;
      this.logicEnabled = null;
      this.motorEnabled = null;
    }
    else {
      if (initObj.hasOwnProperty('publisher')) {
        this.publisher = initObj.publisher
      }
      else {
        this.publisher = '';
      }
      if (initObj.hasOwnProperty('registerValue')) {
        this.registerValue = initObj.registerValue
      }
      else {
        this.registerValue = 0;
      }
      if (initObj.hasOwnProperty('logicEnabled')) {
        this.logicEnabled = initObj.logicEnabled
      }
      else {
        this.logicEnabled = false;
      }
      if (initObj.hasOwnProperty('motorEnabled')) {
        this.motorEnabled = initObj.motorEnabled
      }
      else {
        this.motorEnabled = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PDMCStatus
    // Serialize message field [publisher]
    bufferOffset = _serializer.string(obj.publisher, buffer, bufferOffset);
    // Serialize message field [registerValue]
    bufferOffset = _serializer.uint32(obj.registerValue, buffer, bufferOffset);
    // Serialize message field [logicEnabled]
    bufferOffset = _serializer.bool(obj.logicEnabled, buffer, bufferOffset);
    // Serialize message field [motorEnabled]
    bufferOffset = _serializer.bool(obj.motorEnabled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PDMCStatus
    let len;
    let data = new PDMCStatus(null);
    // Deserialize message field [publisher]
    data.publisher = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [registerValue]
    data.registerValue = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [logicEnabled]
    data.logicEnabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motorEnabled]
    data.motorEnabled = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.publisher.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/PDMCStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a68d9dc9991d8f304fc3adff90114aa5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string publisher
    uint32 registerValue
    bool logicEnabled
    bool motorEnabled
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PDMCStatus(null);
    if (msg.publisher !== undefined) {
      resolved.publisher = msg.publisher;
    }
    else {
      resolved.publisher = ''
    }

    if (msg.registerValue !== undefined) {
      resolved.registerValue = msg.registerValue;
    }
    else {
      resolved.registerValue = 0
    }

    if (msg.logicEnabled !== undefined) {
      resolved.logicEnabled = msg.logicEnabled;
    }
    else {
      resolved.logicEnabled = false
    }

    if (msg.motorEnabled !== undefined) {
      resolved.motorEnabled = msg.motorEnabled;
    }
    else {
      resolved.motorEnabled = false
    }

    return resolved;
    }
};

module.exports = PDMCStatus;
