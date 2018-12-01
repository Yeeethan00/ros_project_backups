// Auto-generated. Do not edit!

// (in-package my_sensor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RotationFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_orientation = null;
    }
    else {
      if (initObj.hasOwnProperty('current_orientation')) {
        this.current_orientation = initObj.current_orientation
      }
      else {
        this.current_orientation = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RotationFeedback
    // Serialize message field [current_orientation]
    bufferOffset = _serializer.float32(obj.current_orientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RotationFeedback
    let len;
    let data = new RotationFeedback(null);
    // Deserialize message field [current_orientation]
    data.current_orientation = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_sensor/RotationFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd917ecfbe26055b91a2641b9ec145ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    float32 current_orientation
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RotationFeedback(null);
    if (msg.current_orientation !== undefined) {
      resolved.current_orientation = msg.current_orientation;
    }
    else {
      resolved.current_orientation = 0.0
    }

    return resolved;
    }
};

module.exports = RotationFeedback;
