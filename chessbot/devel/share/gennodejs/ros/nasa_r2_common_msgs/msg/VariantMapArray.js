// Auto-generated. Do not edit!

// (in-package nasa_r2_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VariantMap = require('./VariantMap.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VariantMapArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.map = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VariantMapArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [map]
    // Serialize the length for message field [map]
    bufferOffset = _serializer.uint32(obj.map.length, buffer, bufferOffset);
    obj.map.forEach((val) => {
      bufferOffset = VariantMap.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VariantMapArray
    let len;
    let data = new VariantMapArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [map]
    // Deserialize array length for message field [map]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.map = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.map[i] = VariantMap.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.map.forEach((val) => {
      length += VariantMap.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/VariantMapArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81c5b31cbd0a1ce333af5ea67766c271';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header       header
    VariantMap[] map
    
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
    MSG: nasa_r2_common_msgs/VariantMap
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
    const resolved = new VariantMapArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.map !== undefined) {
      resolved.map = new Array(msg.map.length);
      for (let i = 0; i < resolved.map.length; ++i) {
        resolved.map[i] = VariantMap.Resolve(msg.map[i]);
      }
    }
    else {
      resolved.map = []
    }

    return resolved;
    }
};

module.exports = VariantMapArray;
