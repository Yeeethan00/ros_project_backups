// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TimerResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_elapsed = null;
      this.updates_sent = null;
    }
    else {
      if (initObj.hasOwnProperty('time_elapsed')) {
        this.time_elapsed = initObj.time_elapsed
      }
      else {
        this.time_elapsed = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('updates_sent')) {
        this.updates_sent = initObj.updates_sent
      }
      else {
        this.updates_sent = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimerResult
    // Serialize message field [time_elapsed]
    bufferOffset = _serializer.duration(obj.time_elapsed, buffer, bufferOffset);
    // Serialize message field [updates_sent]
    bufferOffset = _serializer.uint32(obj.updates_sent, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimerResult
    let len;
    let data = new TimerResult(null);
    // Deserialize message field [time_elapsed]
    data.time_elapsed = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [updates_sent]
    data.updates_sent = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/TimerResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8227810e22df8077dd49231152c9e200';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #Part 2: the result, to be sent by the server upon completion
    #
    #How much time we waited
    duration time_elapsed
    #How many updates we provided along the way
    uint32 updates_sent
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimerResult(null);
    if (msg.time_elapsed !== undefined) {
      resolved.time_elapsed = msg.time_elapsed;
    }
    else {
      resolved.time_elapsed = {secs: 0, nsecs: 0}
    }

    if (msg.updates_sent !== undefined) {
      resolved.updates_sent = msg.updates_sent;
    }
    else {
      resolved.updates_sent = 0
    }

    return resolved;
    }
};

module.exports = TimerResult;
