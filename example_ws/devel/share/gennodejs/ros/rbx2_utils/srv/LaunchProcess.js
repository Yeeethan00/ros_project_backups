// Auto-generated. Do not edit!

// (in-package rbx2_utils.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class LaunchProcessRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaunchProcessRequest
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaunchProcessRequest
    let len;
    let data = new LaunchProcessRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.command.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rbx2_utils/LaunchProcessRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cba5e21e920a3a2b7b375cb65b64cdea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaunchProcessRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    return resolved;
    }
};

class LaunchProcessResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.process_id = null;
    }
    else {
      if (initObj.hasOwnProperty('process_id')) {
        this.process_id = initObj.process_id
      }
      else {
        this.process_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaunchProcessResponse
    // Serialize message field [process_id]
    bufferOffset = _serializer.string(obj.process_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaunchProcessResponse
    let len;
    let data = new LaunchProcessResponse(null);
    // Deserialize message field [process_id]
    data.process_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.process_id.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rbx2_utils/LaunchProcessResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a19d2ed2d6b55934bac7cd67cfed8983';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string process_id
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaunchProcessResponse(null);
    if (msg.process_id !== undefined) {
      resolved.process_id = msg.process_id;
    }
    else {
      resolved.process_id = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: LaunchProcessRequest,
  Response: LaunchProcessResponse,
  md5sum() { return '15f55f5751b44d06bcad0321b1a88466'; },
  datatype() { return 'rbx2_utils/LaunchProcess'; }
};
