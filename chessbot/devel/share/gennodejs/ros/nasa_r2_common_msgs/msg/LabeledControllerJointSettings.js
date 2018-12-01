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

class LabeledControllerJointSettings {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.originator = null;
      this.joint_names = null;
      this.jointVelocityLimits = null;
      this.jointAccelerationLimits = null;
    }
    else {
      if (initObj.hasOwnProperty('originator')) {
        this.originator = initObj.originator
      }
      else {
        this.originator = '';
      }
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('jointVelocityLimits')) {
        this.jointVelocityLimits = initObj.jointVelocityLimits
      }
      else {
        this.jointVelocityLimits = [];
      }
      if (initObj.hasOwnProperty('jointAccelerationLimits')) {
        this.jointAccelerationLimits = initObj.jointAccelerationLimits
      }
      else {
        this.jointAccelerationLimits = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LabeledControllerJointSettings
    // Serialize message field [originator]
    bufferOffset = _serializer.string(obj.originator, buffer, bufferOffset);
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [jointVelocityLimits]
    bufferOffset = _arraySerializer.float64(obj.jointVelocityLimits, buffer, bufferOffset, null);
    // Serialize message field [jointAccelerationLimits]
    bufferOffset = _arraySerializer.float64(obj.jointAccelerationLimits, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LabeledControllerJointSettings
    let len;
    let data = new LabeledControllerJointSettings(null);
    // Deserialize message field [originator]
    data.originator = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [jointVelocityLimits]
    data.jointVelocityLimits = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [jointAccelerationLimits]
    data.jointAccelerationLimits = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.originator.length;
    object.joint_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.jointVelocityLimits.length;
    length += 8 * object.jointAccelerationLimits.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nasa_r2_common_msgs/LabeledControllerJointSettings';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24daa103f09600d0728cbef04caeaa3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string originator
    string[] joint_names
    float64[] jointVelocityLimits
    float64[] jointAccelerationLimits
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LabeledControllerJointSettings(null);
    if (msg.originator !== undefined) {
      resolved.originator = msg.originator;
    }
    else {
      resolved.originator = ''
    }

    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.jointVelocityLimits !== undefined) {
      resolved.jointVelocityLimits = msg.jointVelocityLimits;
    }
    else {
      resolved.jointVelocityLimits = []
    }

    if (msg.jointAccelerationLimits !== undefined) {
      resolved.jointAccelerationLimits = msg.jointAccelerationLimits;
    }
    else {
      resolved.jointAccelerationLimits = []
    }

    return resolved;
    }
};

module.exports = LabeledControllerJointSettings;
