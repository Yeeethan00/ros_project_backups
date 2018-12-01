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

class TorsoStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leftarm = null;
      this.rightarm = null;
      this.neck = null;
      this.lefthand = null;
      this.righthand = null;
      this.waist = null;
    }
    else {
      if (initObj.hasOwnProperty('leftarm')) {
        this.leftarm = initObj.leftarm
      }
      else {
        this.leftarm = '';
      }
      if (initObj.hasOwnProperty('rightarm')) {
        this.rightarm = initObj.rightarm
      }
      else {
        this.rightarm = '';
      }
      if (initObj.hasOwnProperty('neck')) {
        this.neck = initObj.neck
      }
      else {
        this.neck = '';
      }
      if (initObj.hasOwnProperty('lefthand')) {
        this.lefthand = initObj.lefthand
      }
      else {
        this.lefthand = '';
      }
      if (initObj.hasOwnProperty('righthand')) {
        this.righthand = initObj.righthand
      }
      else {
        this.righthand = '';
      }
      if (initObj.hasOwnProperty('waist')) {
        this.waist = initObj.waist
      }
      else {
        this.waist = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TorsoStatus
    // Serialize message field [leftarm]
    bufferOffset = _serializer.string(obj.leftarm, buffer, bufferOffset);
    // Serialize message field [rightarm]
    bufferOffset = _serializer.string(obj.rightarm, buffer, bufferOffset);
    // Serialize message field [neck]
    bufferOffset = _serializer.string(obj.neck, buffer, bufferOffset);
    // Serialize message field [lefthand]
    bufferOffset = _serializer.string(obj.lefthand, buffer, bufferOffset);
    // Serialize message field [righthand]
    bufferOffset = _serializer.string(obj.righthand, buffer, bufferOffset);
    // Serialize message field [waist]
    bufferOffset = _serializer.string(obj.waist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TorsoStatus
    let len;
    let data = new TorsoStatus(null);
    // Deserialize message field [leftarm]
    data.leftarm = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rightarm]
    data.rightarm = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [neck]
    data.neck = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lefthand]
    data.lefthand = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [righthand]
    data.righthand = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [waist]
    data.waist = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.leftarm.length;
    length += object.rightarm.length;
    length += object.neck.length;
    length += object.lefthand.length;
    length += object.righthand.length;
    length += object.waist.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/TorsoStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2334ce336aad886ccb87a294113ed892';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string leftarm
    string rightarm
    string neck
    string lefthand
    string righthand
    string waist
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TorsoStatus(null);
    if (msg.leftarm !== undefined) {
      resolved.leftarm = msg.leftarm;
    }
    else {
      resolved.leftarm = ''
    }

    if (msg.rightarm !== undefined) {
      resolved.rightarm = msg.rightarm;
    }
    else {
      resolved.rightarm = ''
    }

    if (msg.neck !== undefined) {
      resolved.neck = msg.neck;
    }
    else {
      resolved.neck = ''
    }

    if (msg.lefthand !== undefined) {
      resolved.lefthand = msg.lefthand;
    }
    else {
      resolved.lefthand = ''
    }

    if (msg.righthand !== undefined) {
      resolved.righthand = msg.righthand;
    }
    else {
      resolved.righthand = ''
    }

    if (msg.waist !== undefined) {
      resolved.waist = msg.waist;
    }
    else {
      resolved.waist = ''
    }

    return resolved;
    }
};

module.exports = TorsoStatus;
