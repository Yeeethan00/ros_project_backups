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

class MappedType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MappedType
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MappedType
    let len;
    let data = new MappedType(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/MappedType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f61664a4dc14b6b365fb43df66f4679e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MappedType(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
MappedType.Constants = {
  STRING: 0,
  UINT16: 1,
  INT16: 2,
  UINT32: 3,
  INT32: 4,
  FLOAT32: 5,
  BOOL: 6,
}

module.exports = MappedType;
