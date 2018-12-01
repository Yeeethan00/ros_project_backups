// Auto-generated. Do not edit!

// (in-package face_recognition.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FRClientGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.order_id = null;
      this.order_argument = null;
    }
    else {
      if (initObj.hasOwnProperty('order_id')) {
        this.order_id = initObj.order_id
      }
      else {
        this.order_id = 0;
      }
      if (initObj.hasOwnProperty('order_argument')) {
        this.order_argument = initObj.order_argument
      }
      else {
        this.order_argument = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FRClientGoal
    // Serialize message field [order_id]
    bufferOffset = _serializer.uint8(obj.order_id, buffer, bufferOffset);
    // Serialize message field [order_argument]
    bufferOffset = _serializer.string(obj.order_argument, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FRClientGoal
    let len;
    let data = new FRClientGoal(null);
    // Deserialize message field [order_id]
    data.order_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [order_argument]
    data.order_argument = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.order_argument.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'face_recognition/FRClientGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12fa0d0af9b141eceafa42011d31f9c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8   order_id 
    string  order_argument
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FRClientGoal(null);
    if (msg.order_id !== undefined) {
      resolved.order_id = msg.order_id;
    }
    else {
      resolved.order_id = 0
    }

    if (msg.order_argument !== undefined) {
      resolved.order_argument = msg.order_argument;
    }
    else {
      resolved.order_argument = ''
    }

    return resolved;
    }
};

module.exports = FRClientGoal;
