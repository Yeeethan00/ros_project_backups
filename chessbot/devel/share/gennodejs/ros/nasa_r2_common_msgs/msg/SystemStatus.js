// Auto-generated. Do not edit!

// (in-package nasa_r2_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SystemCore = require('./SystemCore.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SystemStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.coreStats = null;
      this.coreTemps = null;
      this.oneMinuteLoad = null;
      this.fiveMinuteLoad = null;
      this.fifteenMinuteLoad = null;
      this.uptime = null;
      this.totalMemory = null;
      this.usedMemory = null;
      this.freeMemory = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('coreStats')) {
        this.coreStats = initObj.coreStats
      }
      else {
        this.coreStats = [];
      }
      if (initObj.hasOwnProperty('coreTemps')) {
        this.coreTemps = initObj.coreTemps
      }
      else {
        this.coreTemps = [];
      }
      if (initObj.hasOwnProperty('oneMinuteLoad')) {
        this.oneMinuteLoad = initObj.oneMinuteLoad
      }
      else {
        this.oneMinuteLoad = 0.0;
      }
      if (initObj.hasOwnProperty('fiveMinuteLoad')) {
        this.fiveMinuteLoad = initObj.fiveMinuteLoad
      }
      else {
        this.fiveMinuteLoad = 0.0;
      }
      if (initObj.hasOwnProperty('fifteenMinuteLoad')) {
        this.fifteenMinuteLoad = initObj.fifteenMinuteLoad
      }
      else {
        this.fifteenMinuteLoad = 0.0;
      }
      if (initObj.hasOwnProperty('uptime')) {
        this.uptime = initObj.uptime
      }
      else {
        this.uptime = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('totalMemory')) {
        this.totalMemory = initObj.totalMemory
      }
      else {
        this.totalMemory = 0;
      }
      if (initObj.hasOwnProperty('usedMemory')) {
        this.usedMemory = initObj.usedMemory
      }
      else {
        this.usedMemory = 0;
      }
      if (initObj.hasOwnProperty('freeMemory')) {
        this.freeMemory = initObj.freeMemory
      }
      else {
        this.freeMemory = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [coreStats]
    // Serialize the length for message field [coreStats]
    bufferOffset = _serializer.uint32(obj.coreStats.length, buffer, bufferOffset);
    obj.coreStats.forEach((val) => {
      bufferOffset = SystemCore.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [coreTemps]
    bufferOffset = _arraySerializer.float64(obj.coreTemps, buffer, bufferOffset, null);
    // Serialize message field [oneMinuteLoad]
    bufferOffset = _serializer.float64(obj.oneMinuteLoad, buffer, bufferOffset);
    // Serialize message field [fiveMinuteLoad]
    bufferOffset = _serializer.float64(obj.fiveMinuteLoad, buffer, bufferOffset);
    // Serialize message field [fifteenMinuteLoad]
    bufferOffset = _serializer.float64(obj.fifteenMinuteLoad, buffer, bufferOffset);
    // Serialize message field [uptime]
    bufferOffset = _serializer.duration(obj.uptime, buffer, bufferOffset);
    // Serialize message field [totalMemory]
    bufferOffset = _serializer.uint32(obj.totalMemory, buffer, bufferOffset);
    // Serialize message field [usedMemory]
    bufferOffset = _serializer.uint32(obj.usedMemory, buffer, bufferOffset);
    // Serialize message field [freeMemory]
    bufferOffset = _serializer.uint32(obj.freeMemory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemStatus
    let len;
    let data = new SystemStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [coreStats]
    // Deserialize array length for message field [coreStats]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.coreStats = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.coreStats[i] = SystemCore.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [coreTemps]
    data.coreTemps = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [oneMinuteLoad]
    data.oneMinuteLoad = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fiveMinuteLoad]
    data.fiveMinuteLoad = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fifteenMinuteLoad]
    data.fifteenMinuteLoad = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [uptime]
    data.uptime = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [totalMemory]
    data.totalMemory = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [usedMemory]
    data.usedMemory = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [freeMemory]
    data.freeMemory = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.name.length;
    object.coreStats.forEach((val) => {
      length += SystemCore.getMessageSize(val);
    });
    length += 8 * object.coreTemps.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/SystemStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4896af13a56b5d046a8dac4145b244f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header              header
    string              name
    SystemCore[]        coreStats
    float64[]           coreTemps
    float64             oneMinuteLoad
    float64             fiveMinuteLoad
    float64             fifteenMinuteLoad
    duration            uptime
    uint32              totalMemory
    uint32              usedMemory
    uint32              freeMemory
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
    MSG: nasa_r2_common_msgs/SystemCore
    string       id
    float64      speed
    float64     load
    bool        failure
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.coreStats !== undefined) {
      resolved.coreStats = new Array(msg.coreStats.length);
      for (let i = 0; i < resolved.coreStats.length; ++i) {
        resolved.coreStats[i] = SystemCore.Resolve(msg.coreStats[i]);
      }
    }
    else {
      resolved.coreStats = []
    }

    if (msg.coreTemps !== undefined) {
      resolved.coreTemps = msg.coreTemps;
    }
    else {
      resolved.coreTemps = []
    }

    if (msg.oneMinuteLoad !== undefined) {
      resolved.oneMinuteLoad = msg.oneMinuteLoad;
    }
    else {
      resolved.oneMinuteLoad = 0.0
    }

    if (msg.fiveMinuteLoad !== undefined) {
      resolved.fiveMinuteLoad = msg.fiveMinuteLoad;
    }
    else {
      resolved.fiveMinuteLoad = 0.0
    }

    if (msg.fifteenMinuteLoad !== undefined) {
      resolved.fifteenMinuteLoad = msg.fifteenMinuteLoad;
    }
    else {
      resolved.fifteenMinuteLoad = 0.0
    }

    if (msg.uptime !== undefined) {
      resolved.uptime = msg.uptime;
    }
    else {
      resolved.uptime = {secs: 0, nsecs: 0}
    }

    if (msg.totalMemory !== undefined) {
      resolved.totalMemory = msg.totalMemory;
    }
    else {
      resolved.totalMemory = 0
    }

    if (msg.usedMemory !== undefined) {
      resolved.usedMemory = msg.usedMemory;
    }
    else {
      resolved.usedMemory = 0
    }

    if (msg.freeMemory !== undefined) {
      resolved.freeMemory = msg.freeMemory;
    }
    else {
      resolved.freeMemory = 0
    }

    return resolved;
    }
};

module.exports = SystemStatus;
