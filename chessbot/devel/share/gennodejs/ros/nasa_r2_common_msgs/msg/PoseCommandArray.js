// Auto-generated. Do not edit!

// (in-package nasa_r2_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PoseCommand = require('./PoseCommand.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PoseCommandArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseCommandArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [command]
    // Serialize the length for message field [command]
    bufferOffset = _serializer.uint32(obj.command.length, buffer, bufferOffset);
    obj.command.forEach((val) => {
      bufferOffset = PoseCommand.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseCommandArray
    let len;
    let data = new PoseCommandArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [command]
    // Deserialize array length for message field [command]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.command = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.command[i] = PoseCommand.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.command.forEach((val) => {
      length += PoseCommand.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/PoseCommandArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd9b3b03f805dcb412e07ffc694f2684';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    PoseCommand[] command
    
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
    MSG: nasa_r2_common_msgs/PoseCommand
    # A Pose with reference coordinate frame, chain definition, and command_id
    string commandId
    string refFrame
    geometry_msgs/Pose pose
    string baseFrame
    string toolFrame
    
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseCommandArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.command !== undefined) {
      resolved.command = new Array(msg.command.length);
      for (let i = 0; i < resolved.command.length; ++i) {
        resolved.command[i] = PoseCommand.Resolve(msg.command[i]);
      }
    }
    else {
      resolved.command = []
    }

    return resolved;
    }
};

module.exports = PoseCommandArray;
