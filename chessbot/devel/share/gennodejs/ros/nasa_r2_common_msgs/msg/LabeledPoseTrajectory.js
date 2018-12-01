// Auto-generated. Do not edit!

// (in-package nasa_r2_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PriorityArray = require('./PriorityArray.js');
let PoseTrajectoryPoint = require('./PoseTrajectoryPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LabeledPoseTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.originator = null;
      this.nodes = null;
      this.node_priorities = null;
      this.refFrames = null;
      this.points = null;
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
      if (initObj.hasOwnProperty('nodes')) {
        this.nodes = initObj.nodes
      }
      else {
        this.nodes = [];
      }
      if (initObj.hasOwnProperty('node_priorities')) {
        this.node_priorities = initObj.node_priorities
      }
      else {
        this.node_priorities = [];
      }
      if (initObj.hasOwnProperty('refFrames')) {
        this.refFrames = initObj.refFrames
      }
      else {
        this.refFrames = [];
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LabeledPoseTrajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [originator]
    bufferOffset = _serializer.string(obj.originator, buffer, bufferOffset);
    // Serialize message field [nodes]
    bufferOffset = _arraySerializer.string(obj.nodes, buffer, bufferOffset, null);
    // Serialize message field [node_priorities]
    // Serialize the length for message field [node_priorities]
    bufferOffset = _serializer.uint32(obj.node_priorities.length, buffer, bufferOffset);
    obj.node_priorities.forEach((val) => {
      bufferOffset = PriorityArray.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [refFrames]
    bufferOffset = _arraySerializer.string(obj.refFrames, buffer, bufferOffset, null);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = PoseTrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LabeledPoseTrajectory
    let len;
    let data = new LabeledPoseTrajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [originator]
    data.originator = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [nodes]
    data.nodes = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [node_priorities]
    // Deserialize array length for message field [node_priorities]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.node_priorities = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.node_priorities[i] = PriorityArray.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [refFrames]
    data.refFrames = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = PoseTrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.originator.length;
    object.nodes.forEach((val) => {
      length += 4 + val.length;
    });
    object.node_priorities.forEach((val) => {
      length += PriorityArray.getMessageSize(val);
    });
    object.refFrames.forEach((val) => {
      length += 4 + val.length;
    });
    object.points.forEach((val) => {
      length += PoseTrajectoryPoint.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/LabeledPoseTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6859ade925296749b6e37b0f7d35911a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string originator
    # length of nodes must match length of poses in each point
    string[] nodes
    # priorities must have nodes length or be omitted which defaults all to HIGH
    PriorityArray[]  node_priorities
    # refFrames must either have one item or be nodes length
    string[] refFrames
    PoseTrajectoryPoint[] points
    
    
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
    MSG: nasa_r2_common_msgs/PriorityArray
    # axis_priorities must be 0, 1, or 6 elements
    # empty defaults to high, 1 sets all axes equal priority, 6 sets each axis (x, y, z, r, p, y)
    uint8[]  axis_priorities
    
    uint8 IGNORE          = 0   # Exclude from trajectory
    uint8 CRITICAL        = 1   # Most important priority in trajectory
    uint8 HIGH            = 2   # Second most important priority in trajectory
    uint8 MEDIUM          = 3   # Medium prioirty in trajectory
    uint8 LOW             = 4   # Low priority in trajectory
    uint8 OPT             = 5   # Optimize trajectory (solve for, but do not iterate to achieve)
    
    #uint8 IGNORE = 0
    #uint8 LOW = 1
    #uint8 MEDIUM = 128
    #uint8 HIGH = 254
    #uint8 CRITICAL = 255
    
    ================================================================================
    MSG: nasa_r2_common_msgs/PoseTrajectoryPoint
    # currently, position only but could add velocity and acceleration later
    geometry_msgs/Pose[] positions
    geometry_msgs/Twist[] velocities
    geometry_msgs/Twist[] accelerations
    duration time_from_start
    
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
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LabeledPoseTrajectory(null);
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

    if (msg.nodes !== undefined) {
      resolved.nodes = msg.nodes;
    }
    else {
      resolved.nodes = []
    }

    if (msg.node_priorities !== undefined) {
      resolved.node_priorities = new Array(msg.node_priorities.length);
      for (let i = 0; i < resolved.node_priorities.length; ++i) {
        resolved.node_priorities[i] = PriorityArray.Resolve(msg.node_priorities[i]);
      }
    }
    else {
      resolved.node_priorities = []
    }

    if (msg.refFrames !== undefined) {
      resolved.refFrames = msg.refFrames;
    }
    else {
      resolved.refFrames = []
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = PoseTrajectoryPoint.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

module.exports = LabeledPoseTrajectory;
