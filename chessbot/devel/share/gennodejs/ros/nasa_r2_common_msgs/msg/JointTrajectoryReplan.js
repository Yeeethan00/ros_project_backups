// Auto-generated. Do not edit!

// (in-package nasa_r2_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ReplanType = require('./ReplanType.js');
let trajectory_msgs = _finder('trajectory_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class JointTrajectoryReplan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.replan = null;
      this.trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('replan')) {
        this.replan = initObj.replan
      }
      else {
        this.replan = [];
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = new trajectory_msgs.msg.JointTrajectory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointTrajectoryReplan
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [replan]
    // Serialize the length for message field [replan]
    bufferOffset = _serializer.uint32(obj.replan.length, buffer, bufferOffset);
    obj.replan.forEach((val) => {
      bufferOffset = ReplanType.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [trajectory]
    bufferOffset = trajectory_msgs.msg.JointTrajectory.serialize(obj.trajectory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointTrajectoryReplan
    let len;
    let data = new JointTrajectoryReplan(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [replan]
    // Deserialize array length for message field [replan]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.replan = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.replan[i] = ReplanType.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [trajectory]
    data.trajectory = trajectory_msgs.msg.JointTrajectory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.replan.length;
    length += trajectory_msgs.msg.JointTrajectory.getMessageSize(object.trajectory);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/JointTrajectoryReplan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '282383b42345996d1c9b14b7391111c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    ReplanType[] replan
    trajectory_msgs/JointTrajectory trajectory
    
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
    MSG: nasa_r2_common_msgs/ReplanType
    uint8 type
    
    uint8 NONE = 0
    uint8 SOFT = 1
    uint8 HARD = 2
    uint8 STOP = 3
    uint8 PAUSE = 4
    uint8 CONTINUE = 5
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectory
    Header header
    string[] joint_names
    JointTrajectoryPoint[] points
    ================================================================================
    MSG: trajectory_msgs/JointTrajectoryPoint
    # Each trajectory point specifies either positions[, velocities[, accelerations]]
    # or positions[, effort] for the trajectory to be executed.
    # All specified values are in the same order as the joint names in JointTrajectory.msg
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointTrajectoryReplan(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.replan !== undefined) {
      resolved.replan = new Array(msg.replan.length);
      for (let i = 0; i < resolved.replan.length; ++i) {
        resolved.replan[i] = ReplanType.Resolve(msg.replan[i]);
      }
    }
    else {
      resolved.replan = []
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = trajectory_msgs.msg.JointTrajectory.Resolve(msg.trajectory)
    }
    else {
      resolved.trajectory = new trajectory_msgs.msg.JointTrajectory()
    }

    return resolved;
    }
};

module.exports = JointTrajectoryReplan;
