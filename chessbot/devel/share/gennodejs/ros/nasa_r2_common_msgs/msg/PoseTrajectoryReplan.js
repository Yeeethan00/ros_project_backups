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
let PoseTrajectory = require('./PoseTrajectory.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PoseTrajectoryReplan {
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
        this.replan = new ReplanType();
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = new PoseTrajectory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseTrajectoryReplan
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [replan]
    bufferOffset = ReplanType.serialize(obj.replan, buffer, bufferOffset);
    // Serialize message field [trajectory]
    bufferOffset = PoseTrajectory.serialize(obj.trajectory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseTrajectoryReplan
    let len;
    let data = new PoseTrajectoryReplan(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [replan]
    data.replan = ReplanType.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory]
    data.trajectory = PoseTrajectory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PoseTrajectory.getMessageSize(object.trajectory);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/PoseTrajectoryReplan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c451df74f58d0f7ac206299290fa0f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    ReplanType replan
    PoseTrajectory trajectory
    
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
    MSG: nasa_r2_common_msgs/PoseTrajectory
    Header header
    # length of nodes must match length of poses in each point
    string[] nodes
    # priorities must have nodes length or be omitted which defaults all to HIGH
    PriorityArray[]  node_priorities
    # refFrames must either have one item or be nodes length
    string[] refFrames
    PoseTrajectoryPoint[] points
    
    
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
    const resolved = new PoseTrajectoryReplan(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.replan !== undefined) {
      resolved.replan = ReplanType.Resolve(msg.replan)
    }
    else {
      resolved.replan = new ReplanType()
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = PoseTrajectory.Resolve(msg.trajectory)
    }
    else {
      resolved.trajectory = new PoseTrajectory()
    }

    return resolved;
    }
};

module.exports = PoseTrajectoryReplan;
