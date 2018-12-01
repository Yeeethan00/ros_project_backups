// Auto-generated. Do not edit!

// (in-package nasa_r2_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Modes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.originator = null;
      this.master = null;
      this.joint_names = null;
      this.supervisor = null;
      this.incumbent = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('originator')) {
        this.originator = initObj.originator
      }
      else {
        this.originator = '';
      }
      if (initObj.hasOwnProperty('master')) {
        this.master = initObj.master
      }
      else {
        this.master = '';
      }
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('supervisor')) {
        this.supervisor = initObj.supervisor
      }
      else {
        this.supervisor = [];
      }
      if (initObj.hasOwnProperty('incumbent')) {
        this.incumbent = initObj.incumbent
      }
      else {
        this.incumbent = [];
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Modes
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [originator]
    bufferOffset = _serializer.string(obj.originator, buffer, bufferOffset);
    // Serialize message field [master]
    bufferOffset = _serializer.string(obj.master, buffer, bufferOffset);
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [supervisor]
    bufferOffset = _arraySerializer.string(obj.supervisor, buffer, bufferOffset, null);
    // Serialize message field [incumbent]
    bufferOffset = _arraySerializer.string(obj.incumbent, buffer, bufferOffset, null);
    // Serialize message field [mode]
    bufferOffset = _arraySerializer.string(obj.mode, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Modes
    let len;
    let data = new Modes(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [originator]
    data.originator = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [master]
    data.master = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [supervisor]
    data.supervisor = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [incumbent]
    data.incumbent = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [mode]
    data.mode = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.originator.length;
    length += object.master.length;
    object.joint_names.forEach((val) => {
      length += 4 + val.length;
    });
    object.supervisor.forEach((val) => {
      length += 4 + val.length;
    });
    object.incumbent.forEach((val) => {
      length += 4 + val.length;
    });
    object.mode.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/Modes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63b389b7faa68c6a12708f1df983f6f3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string originator
    string master
    string[] joint_names
    string[] supervisor
    string[] incumbent
    string[] mode
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Modes(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.originator !== undefined) {
      resolved.originator = msg.originator;
    }
    else {
      resolved.originator = ''
    }

    if (msg.master !== undefined) {
      resolved.master = msg.master;
    }
    else {
      resolved.master = ''
    }

    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.supervisor !== undefined) {
      resolved.supervisor = msg.supervisor;
    }
    else {
      resolved.supervisor = []
    }

    if (msg.incumbent !== undefined) {
      resolved.incumbent = msg.incumbent;
    }
    else {
      resolved.incumbent = []
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = []
    }

    return resolved;
    }
};

module.exports = Modes;
