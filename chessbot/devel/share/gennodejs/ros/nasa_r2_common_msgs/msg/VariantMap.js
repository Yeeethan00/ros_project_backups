// Auto-generated. Do not edit!

// (in-package nasa_r2_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ValueType = require('./ValueType.js');

//-----------------------------------------------------------

class VariantMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.message = null;
      this.value = null;
      this.stringMap = null;
      this.uint16Map = null;
      this.int16Map = null;
      this.uint32Map = null;
      this.int32Map = null;
      this.float32Map = null;
      this.boolMap = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = [];
      }
      if (initObj.hasOwnProperty('stringMap')) {
        this.stringMap = initObj.stringMap
      }
      else {
        this.stringMap = [];
      }
      if (initObj.hasOwnProperty('uint16Map')) {
        this.uint16Map = initObj.uint16Map
      }
      else {
        this.uint16Map = [];
      }
      if (initObj.hasOwnProperty('int16Map')) {
        this.int16Map = initObj.int16Map
      }
      else {
        this.int16Map = [];
      }
      if (initObj.hasOwnProperty('uint32Map')) {
        this.uint32Map = initObj.uint32Map
      }
      else {
        this.uint32Map = [];
      }
      if (initObj.hasOwnProperty('int32Map')) {
        this.int32Map = initObj.int32Map
      }
      else {
        this.int32Map = [];
      }
      if (initObj.hasOwnProperty('float32Map')) {
        this.float32Map = initObj.float32Map
      }
      else {
        this.float32Map = [];
      }
      if (initObj.hasOwnProperty('boolMap')) {
        this.boolMap = initObj.boolMap
      }
      else {
        this.boolMap = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VariantMap
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [value]
    // Serialize the length for message field [value]
    bufferOffset = _serializer.uint32(obj.value.length, buffer, bufferOffset);
    obj.value.forEach((val) => {
      bufferOffset = ValueType.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [stringMap]
    bufferOffset = _arraySerializer.string(obj.stringMap, buffer, bufferOffset, null);
    // Serialize message field [uint16Map]
    bufferOffset = _arraySerializer.uint16(obj.uint16Map, buffer, bufferOffset, null);
    // Serialize message field [int16Map]
    bufferOffset = _arraySerializer.int16(obj.int16Map, buffer, bufferOffset, null);
    // Serialize message field [uint32Map]
    bufferOffset = _arraySerializer.uint32(obj.uint32Map, buffer, bufferOffset, null);
    // Serialize message field [int32Map]
    bufferOffset = _arraySerializer.int32(obj.int32Map, buffer, bufferOffset, null);
    // Serialize message field [float32Map]
    bufferOffset = _arraySerializer.float32(obj.float32Map, buffer, bufferOffset, null);
    // Serialize message field [boolMap]
    bufferOffset = _arraySerializer.bool(obj.boolMap, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VariantMap
    let len;
    let data = new VariantMap(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    // Deserialize array length for message field [value]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.value = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.value[i] = ValueType.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [stringMap]
    data.stringMap = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [uint16Map]
    data.uint16Map = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [int16Map]
    data.int16Map = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [uint32Map]
    data.uint32Map = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [int32Map]
    data.int32Map = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [float32Map]
    data.float32Map = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [boolMap]
    data.boolMap = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.message.length;
    object.value.forEach((val) => {
      length += ValueType.getMessageSize(val);
    });
    object.stringMap.forEach((val) => {
      length += 4 + val.length;
    });
    length += 2 * object.uint16Map.length;
    length += 2 * object.int16Map.length;
    length += 4 * object.uint32Map.length;
    length += 4 * object.int32Map.length;
    length += 4 * object.float32Map.length;
    length += object.boolMap.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/VariantMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8356d002313ee472651f88ac3bf992a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string      name
    string      message
    ValueType[] value
    string[]    stringMap
    uint16[]    uint16Map
    int16[]     int16Map
    uint32[]    uint32Map
    int32[]     int32Map
    float32[]   float32Map
    bool[]      boolMap
    
    ================================================================================
    MSG: nasa_r2_common_msgs/ValueType
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
    const resolved = new VariantMap(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.value !== undefined) {
      resolved.value = new Array(msg.value.length);
      for (let i = 0; i < resolved.value.length; ++i) {
        resolved.value[i] = ValueType.Resolve(msg.value[i]);
      }
    }
    else {
      resolved.value = []
    }

    if (msg.stringMap !== undefined) {
      resolved.stringMap = msg.stringMap;
    }
    else {
      resolved.stringMap = []
    }

    if (msg.uint16Map !== undefined) {
      resolved.uint16Map = msg.uint16Map;
    }
    else {
      resolved.uint16Map = []
    }

    if (msg.int16Map !== undefined) {
      resolved.int16Map = msg.int16Map;
    }
    else {
      resolved.int16Map = []
    }

    if (msg.uint32Map !== undefined) {
      resolved.uint32Map = msg.uint32Map;
    }
    else {
      resolved.uint32Map = []
    }

    if (msg.int32Map !== undefined) {
      resolved.int32Map = msg.int32Map;
    }
    else {
      resolved.int32Map = []
    }

    if (msg.float32Map !== undefined) {
      resolved.float32Map = msg.float32Map;
    }
    else {
      resolved.float32Map = []
    }

    if (msg.boolMap !== undefined) {
      resolved.boolMap = msg.boolMap;
    }
    else {
      resolved.boolMap = []
    }

    return resolved;
    }
};

module.exports = VariantMap;
