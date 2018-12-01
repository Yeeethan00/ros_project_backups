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

class KillProcessRequest {
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
    // Serializes a message object of type KillProcessRequest
    // Serialize message field [process_id]
    bufferOffset = _serializer.string(obj.process_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KillProcessRequest
    let len;
    let data = new KillProcessRequest(null);
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
    return 'rbx2_utils/KillProcessRequest';
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
    const resolved = new KillProcessRequest(null);
    if (msg.process_id !== undefined) {
      resolved.process_id = msg.process_id;
    }
    else {
      resolved.process_id = ''
    }

    return resolved;
    }
};

class KillProcessResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KillProcessResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KillProcessResponse
    let len;
    let data = new KillProcessResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rbx2_utils/KillProcessResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KillProcessResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: KillProcessRequest,
  Response: KillProcessResponse,
  md5sum() { return '54319f819462371f5e2b56e424d9b26f'; },
  datatype() { return 'rbx2_utils/KillProcess'; }
};
