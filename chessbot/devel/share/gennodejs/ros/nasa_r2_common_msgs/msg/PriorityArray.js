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

class PriorityArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.axis_priorities = null;
    }
    else {
      if (initObj.hasOwnProperty('axis_priorities')) {
        this.axis_priorities = initObj.axis_priorities
      }
      else {
        this.axis_priorities = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PriorityArray
    // Serialize message field [axis_priorities]
    bufferOffset = _arraySerializer.uint8(obj.axis_priorities, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PriorityArray
    let len;
    let data = new PriorityArray(null);
    // Deserialize message field [axis_priorities]
    data.axis_priorities = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.axis_priorities.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/PriorityArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b680195622dc1787258149093c8d5b54';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PriorityArray(null);
    if (msg.axis_priorities !== undefined) {
      resolved.axis_priorities = msg.axis_priorities;
    }
    else {
      resolved.axis_priorities = []
    }

    return resolved;
    }
};

// Constants for message
PriorityArray.Constants = {
  IGNORE: 0,
  CRITICAL: 1,
  HIGH: 2,
  MEDIUM: 3,
  LOW: 4,
  OPT: 5,
}

module.exports = PriorityArray;
