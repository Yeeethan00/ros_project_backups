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

class LabeledGripperPositionCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.originator = null;
      this.name = null;
      this.setpoint = null;
      this.command = null;
      this.force = null;
      this.dutyCycle = null;
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
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('setpoint')) {
        this.setpoint = initObj.setpoint
      }
      else {
        this.setpoint = [];
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = [];
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = [];
      }
      if (initObj.hasOwnProperty('dutyCycle')) {
        this.dutyCycle = initObj.dutyCycle
      }
      else {
        this.dutyCycle = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LabeledGripperPositionCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [originator]
    bufferOffset = _serializer.string(obj.originator, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [setpoint]
    bufferOffset = _arraySerializer.string(obj.setpoint, buffer, bufferOffset, null);
    // Serialize message field [command]
    bufferOffset = _arraySerializer.string(obj.command, buffer, bufferOffset, null);
    // Serialize message field [force]
    bufferOffset = _arraySerializer.float64(obj.force, buffer, bufferOffset, null);
    // Serialize message field [dutyCycle]
    bufferOffset = _arraySerializer.uint16(obj.dutyCycle, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LabeledGripperPositionCommand
    let len;
    let data = new LabeledGripperPositionCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [originator]
    data.originator = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [setpoint]
    data.setpoint = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [command]
    data.command = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [force]
    data.force = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [dutyCycle]
    data.dutyCycle = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.originator.length;
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    object.setpoint.forEach((val) => {
      length += 4 + val.length;
    });
    object.command.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.force.length;
    length += 2 * object.dutyCycle.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/LabeledGripperPositionCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cdc758be1e885c351a0d055826094942';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string originator
    string[] name
    string[] setpoint
    string[] command
    float64[] force
    uint16[] dutyCycle
    
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
    const resolved = new LabeledGripperPositionCommand(null);
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

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.setpoint !== undefined) {
      resolved.setpoint = msg.setpoint;
    }
    else {
      resolved.setpoint = []
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = []
    }

    if (msg.force !== undefined) {
      resolved.force = msg.force;
    }
    else {
      resolved.force = []
    }

    if (msg.dutyCycle !== undefined) {
      resolved.dutyCycle = msg.dutyCycle;
    }
    else {
      resolved.dutyCycle = []
    }

    return resolved;
    }
};

module.exports = LabeledGripperPositionCommand;
