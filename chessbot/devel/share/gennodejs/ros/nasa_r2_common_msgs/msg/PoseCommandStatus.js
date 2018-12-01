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

class PoseCommandStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.commandId = null;
      this.status = null;
      this.statusMessage = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('commandId')) {
        this.commandId = initObj.commandId
      }
      else {
        this.commandId = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('statusMessage')) {
        this.statusMessage = initObj.statusMessage
      }
      else {
        this.statusMessage = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseCommandStatus
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [commandId]
    bufferOffset = _serializer.string(obj.commandId, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [statusMessage]
    bufferOffset = _serializer.string(obj.statusMessage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseCommandStatus
    let len;
    let data = new PoseCommandStatus(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [commandId]
    data.commandId = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [statusMessage]
    data.statusMessage = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.commandId.length;
    length += object.statusMessage.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/PoseCommandStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82493b7735e3fe414b93381d96bfd1ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    string commandId
    uint8 PENDING=0
    uint8 ACTIVE=1
    uint8 REJECTED=2
    uint8 SUCCEEDED=3
    uint8 FAILED=4
    uint8 status
    string statusMessage
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseCommandStatus(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.commandId !== undefined) {
      resolved.commandId = msg.commandId;
    }
    else {
      resolved.commandId = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.statusMessage !== undefined) {
      resolved.statusMessage = msg.statusMessage;
    }
    else {
      resolved.statusMessage = ''
    }

    return resolved;
    }
};

// Constants for message
PoseCommandStatus.Constants = {
  PENDING: 0,
  ACTIVE: 1,
  REJECTED: 2,
  SUCCEEDED: 3,
  FAILED: 4,
}

module.exports = PoseCommandStatus;
