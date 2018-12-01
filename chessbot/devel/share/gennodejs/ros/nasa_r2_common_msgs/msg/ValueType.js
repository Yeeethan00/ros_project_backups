// Auto-generated. Do not edit!

// (in-package nasa_r2_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MappedType = require('./MappedType.js');

//-----------------------------------------------------------

class ValueType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key = null;
      this.type = null;
      this.index = null;
    }
    else {
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new MappedType();
      }
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ValueType
    // Serialize message field [key]
    bufferOffset = _serializer.string(obj.key, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = MappedType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.uint32(obj.index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ValueType
    let len;
    let data = new ValueType(null);
    // Deserialize message field [key]
    data.key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = MappedType.deserialize(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.key.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/ValueType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77bd6714cc0b98aab863f096be2d2adc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string     key
    MappedType type
    uint32     index
    
    ================================================================================
    MSG: nasa_r2_common_msgs/MappedType
    uint8 STRING  = 0
    uint8 UINT16  = 1
    uint8 INT16   = 2
    uint8 UINT32  = 3
    uint8 INT32   = 4
    uint8 FLOAT32 = 5
    uint8 BOOL    = 6
    
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ValueType(null);
    if (msg.key !== undefined) {
      resolved.key = msg.key;
    }
    else {
      resolved.key = ''
    }

    if (msg.type !== undefined) {
      resolved.type = MappedType.Resolve(msg.type)
    }
    else {
      resolved.type = new MappedType()
    }

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    return resolved;
    }
};

module.exports = ValueType;
