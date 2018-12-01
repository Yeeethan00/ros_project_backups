// Auto-generated. Do not edit!

// (in-package nasa_r2_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ForceControlAxis = require('./ForceControlAxis.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ForceControlAxisArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.nodes = null;
      this.axes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('nodes')) {
        this.nodes = initObj.nodes
      }
      else {
        this.nodes = [];
      }
      if (initObj.hasOwnProperty('axes')) {
        this.axes = initObj.axes
      }
      else {
        this.axes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ForceControlAxisArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [nodes]
    bufferOffset = _arraySerializer.string(obj.nodes, buffer, bufferOffset, null);
    // Serialize message field [axes]
    // Serialize the length for message field [axes]
    bufferOffset = _serializer.uint32(obj.axes.length, buffer, bufferOffset);
    obj.axes.forEach((val) => {
      bufferOffset = ForceControlAxis.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ForceControlAxisArray
    let len;
    let data = new ForceControlAxisArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [nodes]
    data.nodes = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [axes]
    // Deserialize array length for message field [axes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.axes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.axes[i] = ForceControlAxis.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.nodes.forEach((val) => {
      length += 4 + val.length;
    });
    object.axes.forEach((val) => {
      length += ForceControlAxis.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/ForceControlAxisArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9bcafba0fd121ec03cb25f3c5a8b045';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string[] nodes
    ForceControlAxis[] axes
    
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
    MSG: nasa_r2_common_msgs/ForceControlAxis
    uint8[] axis
    float32[] magnitude
    
    uint8 X       = 0
    uint8 Y       = 1
    uint8 Z       = 2
    uint8 ROLL    = 3
    uint8 PITCH   = 4
    uint8 YAW     = 5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ForceControlAxisArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.nodes !== undefined) {
      resolved.nodes = msg.nodes;
    }
    else {
      resolved.nodes = []
    }

    if (msg.axes !== undefined) {
      resolved.axes = new Array(msg.axes.length);
      for (let i = 0; i < resolved.axes.length; ++i) {
        resolved.axes[i] = ForceControlAxis.Resolve(msg.axes[i]);
      }
    }
    else {
      resolved.axes = []
    }

    return resolved;
    }
};

module.exports = ForceControlAxisArray;
