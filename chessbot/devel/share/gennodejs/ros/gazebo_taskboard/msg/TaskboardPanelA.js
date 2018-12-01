// Auto-generated. Do not edit!

// (in-package gazebo_taskboard.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TaskboardPanelA {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.PANEL_POWER_COVER = null;
      this.PANEL_POWER_SWITCH = null;
      this.PANEL_POWER_LED = null;
      this.A01_ROCKER_SWITCH = null;
      this.A01_ROCKER_LED_TOP = null;
      this.A01_ROCKER_LED_BOTTOM = null;
      this.A02_LED_NUM_PAD_A1 = null;
      this.A02_LED_NUM_PAD_A2 = null;
      this.A02_LED_NUM_PAD_A3 = null;
      this.A02_LED_NUM_PAD_B1 = null;
      this.A02_LED_NUM_PAD_B2 = null;
      this.A02_LED_NUM_PAD_B3 = null;
      this.A02_LED_NUM_PAD_C1 = null;
      this.A02_LED_NUM_PAD_C2 = null;
      this.A02_LED_NUM_PAD_C3 = null;
      this.A02_NUM_PAD_A1 = null;
      this.A02_NUM_PAD_A2 = null;
      this.A02_NUM_PAD_A3 = null;
      this.A02_NUM_PAD_B1 = null;
      this.A02_NUM_PAD_B2 = null;
      this.A02_NUM_PAD_B3 = null;
      this.A02_NUM_PAD_C1 = null;
      this.A02_NUM_PAD_C2 = null;
      this.A02_NUM_PAD_C3 = null;
      this.A03_TOGGLE = null;
      this.A03_LED = null;
      this.A04_TOGGLE = null;
      this.A04_LED_TOP = null;
      this.A04_LED_BOTTOM = null;
      this.A05_TOGGLE = null;
      this.A05_LED = null;
    }
    else {
      if (initObj.hasOwnProperty('PANEL_POWER_COVER')) {
        this.PANEL_POWER_COVER = initObj.PANEL_POWER_COVER
      }
      else {
        this.PANEL_POWER_COVER = '';
      }
      if (initObj.hasOwnProperty('PANEL_POWER_SWITCH')) {
        this.PANEL_POWER_SWITCH = initObj.PANEL_POWER_SWITCH
      }
      else {
        this.PANEL_POWER_SWITCH = '';
      }
      if (initObj.hasOwnProperty('PANEL_POWER_LED')) {
        this.PANEL_POWER_LED = initObj.PANEL_POWER_LED
      }
      else {
        this.PANEL_POWER_LED = '';
      }
      if (initObj.hasOwnProperty('A01_ROCKER_SWITCH')) {
        this.A01_ROCKER_SWITCH = initObj.A01_ROCKER_SWITCH
      }
      else {
        this.A01_ROCKER_SWITCH = '';
      }
      if (initObj.hasOwnProperty('A01_ROCKER_LED_TOP')) {
        this.A01_ROCKER_LED_TOP = initObj.A01_ROCKER_LED_TOP
      }
      else {
        this.A01_ROCKER_LED_TOP = '';
      }
      if (initObj.hasOwnProperty('A01_ROCKER_LED_BOTTOM')) {
        this.A01_ROCKER_LED_BOTTOM = initObj.A01_ROCKER_LED_BOTTOM
      }
      else {
        this.A01_ROCKER_LED_BOTTOM = '';
      }
      if (initObj.hasOwnProperty('A02_LED_NUM_PAD_A1')) {
        this.A02_LED_NUM_PAD_A1 = initObj.A02_LED_NUM_PAD_A1
      }
      else {
        this.A02_LED_NUM_PAD_A1 = '';
      }
      if (initObj.hasOwnProperty('A02_LED_NUM_PAD_A2')) {
        this.A02_LED_NUM_PAD_A2 = initObj.A02_LED_NUM_PAD_A2
      }
      else {
        this.A02_LED_NUM_PAD_A2 = '';
      }
      if (initObj.hasOwnProperty('A02_LED_NUM_PAD_A3')) {
        this.A02_LED_NUM_PAD_A3 = initObj.A02_LED_NUM_PAD_A3
      }
      else {
        this.A02_LED_NUM_PAD_A3 = '';
      }
      if (initObj.hasOwnProperty('A02_LED_NUM_PAD_B1')) {
        this.A02_LED_NUM_PAD_B1 = initObj.A02_LED_NUM_PAD_B1
      }
      else {
        this.A02_LED_NUM_PAD_B1 = '';
      }
      if (initObj.hasOwnProperty('A02_LED_NUM_PAD_B2')) {
        this.A02_LED_NUM_PAD_B2 = initObj.A02_LED_NUM_PAD_B2
      }
      else {
        this.A02_LED_NUM_PAD_B2 = '';
      }
      if (initObj.hasOwnProperty('A02_LED_NUM_PAD_B3')) {
        this.A02_LED_NUM_PAD_B3 = initObj.A02_LED_NUM_PAD_B3
      }
      else {
        this.A02_LED_NUM_PAD_B3 = '';
      }
      if (initObj.hasOwnProperty('A02_LED_NUM_PAD_C1')) {
        this.A02_LED_NUM_PAD_C1 = initObj.A02_LED_NUM_PAD_C1
      }
      else {
        this.A02_LED_NUM_PAD_C1 = '';
      }
      if (initObj.hasOwnProperty('A02_LED_NUM_PAD_C2')) {
        this.A02_LED_NUM_PAD_C2 = initObj.A02_LED_NUM_PAD_C2
      }
      else {
        this.A02_LED_NUM_PAD_C2 = '';
      }
      if (initObj.hasOwnProperty('A02_LED_NUM_PAD_C3')) {
        this.A02_LED_NUM_PAD_C3 = initObj.A02_LED_NUM_PAD_C3
      }
      else {
        this.A02_LED_NUM_PAD_C3 = '';
      }
      if (initObj.hasOwnProperty('A02_NUM_PAD_A1')) {
        this.A02_NUM_PAD_A1 = initObj.A02_NUM_PAD_A1
      }
      else {
        this.A02_NUM_PAD_A1 = '';
      }
      if (initObj.hasOwnProperty('A02_NUM_PAD_A2')) {
        this.A02_NUM_PAD_A2 = initObj.A02_NUM_PAD_A2
      }
      else {
        this.A02_NUM_PAD_A2 = '';
      }
      if (initObj.hasOwnProperty('A02_NUM_PAD_A3')) {
        this.A02_NUM_PAD_A3 = initObj.A02_NUM_PAD_A3
      }
      else {
        this.A02_NUM_PAD_A3 = '';
      }
      if (initObj.hasOwnProperty('A02_NUM_PAD_B1')) {
        this.A02_NUM_PAD_B1 = initObj.A02_NUM_PAD_B1
      }
      else {
        this.A02_NUM_PAD_B1 = '';
      }
      if (initObj.hasOwnProperty('A02_NUM_PAD_B2')) {
        this.A02_NUM_PAD_B2 = initObj.A02_NUM_PAD_B2
      }
      else {
        this.A02_NUM_PAD_B2 = '';
      }
      if (initObj.hasOwnProperty('A02_NUM_PAD_B3')) {
        this.A02_NUM_PAD_B3 = initObj.A02_NUM_PAD_B3
      }
      else {
        this.A02_NUM_PAD_B3 = '';
      }
      if (initObj.hasOwnProperty('A02_NUM_PAD_C1')) {
        this.A02_NUM_PAD_C1 = initObj.A02_NUM_PAD_C1
      }
      else {
        this.A02_NUM_PAD_C1 = '';
      }
      if (initObj.hasOwnProperty('A02_NUM_PAD_C2')) {
        this.A02_NUM_PAD_C2 = initObj.A02_NUM_PAD_C2
      }
      else {
        this.A02_NUM_PAD_C2 = '';
      }
      if (initObj.hasOwnProperty('A02_NUM_PAD_C3')) {
        this.A02_NUM_PAD_C3 = initObj.A02_NUM_PAD_C3
      }
      else {
        this.A02_NUM_PAD_C3 = '';
      }
      if (initObj.hasOwnProperty('A03_TOGGLE')) {
        this.A03_TOGGLE = initObj.A03_TOGGLE
      }
      else {
        this.A03_TOGGLE = '';
      }
      if (initObj.hasOwnProperty('A03_LED')) {
        this.A03_LED = initObj.A03_LED
      }
      else {
        this.A03_LED = '';
      }
      if (initObj.hasOwnProperty('A04_TOGGLE')) {
        this.A04_TOGGLE = initObj.A04_TOGGLE
      }
      else {
        this.A04_TOGGLE = '';
      }
      if (initObj.hasOwnProperty('A04_LED_TOP')) {
        this.A04_LED_TOP = initObj.A04_LED_TOP
      }
      else {
        this.A04_LED_TOP = '';
      }
      if (initObj.hasOwnProperty('A04_LED_BOTTOM')) {
        this.A04_LED_BOTTOM = initObj.A04_LED_BOTTOM
      }
      else {
        this.A04_LED_BOTTOM = '';
      }
      if (initObj.hasOwnProperty('A05_TOGGLE')) {
        this.A05_TOGGLE = initObj.A05_TOGGLE
      }
      else {
        this.A05_TOGGLE = '';
      }
      if (initObj.hasOwnProperty('A05_LED')) {
        this.A05_LED = initObj.A05_LED
      }
      else {
        this.A05_LED = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskboardPanelA
    // Serialize message field [PANEL_POWER_COVER]
    bufferOffset = _serializer.string(obj.PANEL_POWER_COVER, buffer, bufferOffset);
    // Serialize message field [PANEL_POWER_SWITCH]
    bufferOffset = _serializer.string(obj.PANEL_POWER_SWITCH, buffer, bufferOffset);
    // Serialize message field [PANEL_POWER_LED]
    bufferOffset = _serializer.string(obj.PANEL_POWER_LED, buffer, bufferOffset);
    // Serialize message field [A01_ROCKER_SWITCH]
    bufferOffset = _serializer.string(obj.A01_ROCKER_SWITCH, buffer, bufferOffset);
    // Serialize message field [A01_ROCKER_LED_TOP]
    bufferOffset = _serializer.string(obj.A01_ROCKER_LED_TOP, buffer, bufferOffset);
    // Serialize message field [A01_ROCKER_LED_BOTTOM]
    bufferOffset = _serializer.string(obj.A01_ROCKER_LED_BOTTOM, buffer, bufferOffset);
    // Serialize message field [A02_LED_NUM_PAD_A1]
    bufferOffset = _serializer.string(obj.A02_LED_NUM_PAD_A1, buffer, bufferOffset);
    // Serialize message field [A02_LED_NUM_PAD_A2]
    bufferOffset = _serializer.string(obj.A02_LED_NUM_PAD_A2, buffer, bufferOffset);
    // Serialize message field [A02_LED_NUM_PAD_A3]
    bufferOffset = _serializer.string(obj.A02_LED_NUM_PAD_A3, buffer, bufferOffset);
    // Serialize message field [A02_LED_NUM_PAD_B1]
    bufferOffset = _serializer.string(obj.A02_LED_NUM_PAD_B1, buffer, bufferOffset);
    // Serialize message field [A02_LED_NUM_PAD_B2]
    bufferOffset = _serializer.string(obj.A02_LED_NUM_PAD_B2, buffer, bufferOffset);
    // Serialize message field [A02_LED_NUM_PAD_B3]
    bufferOffset = _serializer.string(obj.A02_LED_NUM_PAD_B3, buffer, bufferOffset);
    // Serialize message field [A02_LED_NUM_PAD_C1]
    bufferOffset = _serializer.string(obj.A02_LED_NUM_PAD_C1, buffer, bufferOffset);
    // Serialize message field [A02_LED_NUM_PAD_C2]
    bufferOffset = _serializer.string(obj.A02_LED_NUM_PAD_C2, buffer, bufferOffset);
    // Serialize message field [A02_LED_NUM_PAD_C3]
    bufferOffset = _serializer.string(obj.A02_LED_NUM_PAD_C3, buffer, bufferOffset);
    // Serialize message field [A02_NUM_PAD_A1]
    bufferOffset = _serializer.string(obj.A02_NUM_PAD_A1, buffer, bufferOffset);
    // Serialize message field [A02_NUM_PAD_A2]
    bufferOffset = _serializer.string(obj.A02_NUM_PAD_A2, buffer, bufferOffset);
    // Serialize message field [A02_NUM_PAD_A3]
    bufferOffset = _serializer.string(obj.A02_NUM_PAD_A3, buffer, bufferOffset);
    // Serialize message field [A02_NUM_PAD_B1]
    bufferOffset = _serializer.string(obj.A02_NUM_PAD_B1, buffer, bufferOffset);
    // Serialize message field [A02_NUM_PAD_B2]
    bufferOffset = _serializer.string(obj.A02_NUM_PAD_B2, buffer, bufferOffset);
    // Serialize message field [A02_NUM_PAD_B3]
    bufferOffset = _serializer.string(obj.A02_NUM_PAD_B3, buffer, bufferOffset);
    // Serialize message field [A02_NUM_PAD_C1]
    bufferOffset = _serializer.string(obj.A02_NUM_PAD_C1, buffer, bufferOffset);
    // Serialize message field [A02_NUM_PAD_C2]
    bufferOffset = _serializer.string(obj.A02_NUM_PAD_C2, buffer, bufferOffset);
    // Serialize message field [A02_NUM_PAD_C3]
    bufferOffset = _serializer.string(obj.A02_NUM_PAD_C3, buffer, bufferOffset);
    // Serialize message field [A03_TOGGLE]
    bufferOffset = _serializer.string(obj.A03_TOGGLE, buffer, bufferOffset);
    // Serialize message field [A03_LED]
    bufferOffset = _serializer.string(obj.A03_LED, buffer, bufferOffset);
    // Serialize message field [A04_TOGGLE]
    bufferOffset = _serializer.string(obj.A04_TOGGLE, buffer, bufferOffset);
    // Serialize message field [A04_LED_TOP]
    bufferOffset = _serializer.string(obj.A04_LED_TOP, buffer, bufferOffset);
    // Serialize message field [A04_LED_BOTTOM]
    bufferOffset = _serializer.string(obj.A04_LED_BOTTOM, buffer, bufferOffset);
    // Serialize message field [A05_TOGGLE]
    bufferOffset = _serializer.string(obj.A05_TOGGLE, buffer, bufferOffset);
    // Serialize message field [A05_LED]
    bufferOffset = _serializer.string(obj.A05_LED, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskboardPanelA
    let len;
    let data = new TaskboardPanelA(null);
    // Deserialize message field [PANEL_POWER_COVER]
    data.PANEL_POWER_COVER = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [PANEL_POWER_SWITCH]
    data.PANEL_POWER_SWITCH = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [PANEL_POWER_LED]
    data.PANEL_POWER_LED = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A01_ROCKER_SWITCH]
    data.A01_ROCKER_SWITCH = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A01_ROCKER_LED_TOP]
    data.A01_ROCKER_LED_TOP = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A01_ROCKER_LED_BOTTOM]
    data.A01_ROCKER_LED_BOTTOM = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_LED_NUM_PAD_A1]
    data.A02_LED_NUM_PAD_A1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_LED_NUM_PAD_A2]
    data.A02_LED_NUM_PAD_A2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_LED_NUM_PAD_A3]
    data.A02_LED_NUM_PAD_A3 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_LED_NUM_PAD_B1]
    data.A02_LED_NUM_PAD_B1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_LED_NUM_PAD_B2]
    data.A02_LED_NUM_PAD_B2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_LED_NUM_PAD_B3]
    data.A02_LED_NUM_PAD_B3 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_LED_NUM_PAD_C1]
    data.A02_LED_NUM_PAD_C1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_LED_NUM_PAD_C2]
    data.A02_LED_NUM_PAD_C2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_LED_NUM_PAD_C3]
    data.A02_LED_NUM_PAD_C3 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_NUM_PAD_A1]
    data.A02_NUM_PAD_A1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_NUM_PAD_A2]
    data.A02_NUM_PAD_A2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_NUM_PAD_A3]
    data.A02_NUM_PAD_A3 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_NUM_PAD_B1]
    data.A02_NUM_PAD_B1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_NUM_PAD_B2]
    data.A02_NUM_PAD_B2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_NUM_PAD_B3]
    data.A02_NUM_PAD_B3 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_NUM_PAD_C1]
    data.A02_NUM_PAD_C1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_NUM_PAD_C2]
    data.A02_NUM_PAD_C2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A02_NUM_PAD_C3]
    data.A02_NUM_PAD_C3 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A03_TOGGLE]
    data.A03_TOGGLE = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A03_LED]
    data.A03_LED = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A04_TOGGLE]
    data.A04_TOGGLE = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A04_LED_TOP]
    data.A04_LED_TOP = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A04_LED_BOTTOM]
    data.A04_LED_BOTTOM = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A05_TOGGLE]
    data.A05_TOGGLE = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [A05_LED]
    data.A05_LED = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.PANEL_POWER_COVER.length;
    length += object.PANEL_POWER_SWITCH.length;
    length += object.PANEL_POWER_LED.length;
    length += object.A01_ROCKER_SWITCH.length;
    length += object.A01_ROCKER_LED_TOP.length;
    length += object.A01_ROCKER_LED_BOTTOM.length;
    length += object.A02_LED_NUM_PAD_A1.length;
    length += object.A02_LED_NUM_PAD_A2.length;
    length += object.A02_LED_NUM_PAD_A3.length;
    length += object.A02_LED_NUM_PAD_B1.length;
    length += object.A02_LED_NUM_PAD_B2.length;
    length += object.A02_LED_NUM_PAD_B3.length;
    length += object.A02_LED_NUM_PAD_C1.length;
    length += object.A02_LED_NUM_PAD_C2.length;
    length += object.A02_LED_NUM_PAD_C3.length;
    length += object.A02_NUM_PAD_A1.length;
    length += object.A02_NUM_PAD_A2.length;
    length += object.A02_NUM_PAD_A3.length;
    length += object.A02_NUM_PAD_B1.length;
    length += object.A02_NUM_PAD_B2.length;
    length += object.A02_NUM_PAD_B3.length;
    length += object.A02_NUM_PAD_C1.length;
    length += object.A02_NUM_PAD_C2.length;
    length += object.A02_NUM_PAD_C3.length;
    length += object.A03_TOGGLE.length;
    length += object.A03_LED.length;
    length += object.A04_TOGGLE.length;
    length += object.A04_LED_TOP.length;
    length += object.A04_LED_BOTTOM.length;
    length += object.A05_TOGGLE.length;
    length += object.A05_LED.length;
    return length + 124;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gazebo_taskboard/TaskboardPanelA';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee4c1b86056331dd76c8ef8469b7f0fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string PANEL_POWER_COVER
    string PANEL_POWER_SWITCH
    string PANEL_POWER_LED
    string A01_ROCKER_SWITCH
    string A01_ROCKER_LED_TOP
    string A01_ROCKER_LED_BOTTOM
    string A02_LED_NUM_PAD_A1
    string A02_LED_NUM_PAD_A2
    string A02_LED_NUM_PAD_A3
    string A02_LED_NUM_PAD_B1
    string A02_LED_NUM_PAD_B2
    string A02_LED_NUM_PAD_B3
    string A02_LED_NUM_PAD_C1
    string A02_LED_NUM_PAD_C2
    string A02_LED_NUM_PAD_C3
    string A02_NUM_PAD_A1
    string A02_NUM_PAD_A2
    string A02_NUM_PAD_A3
    string A02_NUM_PAD_B1
    string A02_NUM_PAD_B2
    string A02_NUM_PAD_B3
    string A02_NUM_PAD_C1
    string A02_NUM_PAD_C2
    string A02_NUM_PAD_C3
    string A03_TOGGLE
    string A03_LED
    string A04_TOGGLE
    string A04_LED_TOP
    string A04_LED_BOTTOM
    string A05_TOGGLE
    string A05_LED
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskboardPanelA(null);
    if (msg.PANEL_POWER_COVER !== undefined) {
      resolved.PANEL_POWER_COVER = msg.PANEL_POWER_COVER;
    }
    else {
      resolved.PANEL_POWER_COVER = ''
    }

    if (msg.PANEL_POWER_SWITCH !== undefined) {
      resolved.PANEL_POWER_SWITCH = msg.PANEL_POWER_SWITCH;
    }
    else {
      resolved.PANEL_POWER_SWITCH = ''
    }

    if (msg.PANEL_POWER_LED !== undefined) {
      resolved.PANEL_POWER_LED = msg.PANEL_POWER_LED;
    }
    else {
      resolved.PANEL_POWER_LED = ''
    }

    if (msg.A01_ROCKER_SWITCH !== undefined) {
      resolved.A01_ROCKER_SWITCH = msg.A01_ROCKER_SWITCH;
    }
    else {
      resolved.A01_ROCKER_SWITCH = ''
    }

    if (msg.A01_ROCKER_LED_TOP !== undefined) {
      resolved.A01_ROCKER_LED_TOP = msg.A01_ROCKER_LED_TOP;
    }
    else {
      resolved.A01_ROCKER_LED_TOP = ''
    }

    if (msg.A01_ROCKER_LED_BOTTOM !== undefined) {
      resolved.A01_ROCKER_LED_BOTTOM = msg.A01_ROCKER_LED_BOTTOM;
    }
    else {
      resolved.A01_ROCKER_LED_BOTTOM = ''
    }

    if (msg.A02_LED_NUM_PAD_A1 !== undefined) {
      resolved.A02_LED_NUM_PAD_A1 = msg.A02_LED_NUM_PAD_A1;
    }
    else {
      resolved.A02_LED_NUM_PAD_A1 = ''
    }

    if (msg.A02_LED_NUM_PAD_A2 !== undefined) {
      resolved.A02_LED_NUM_PAD_A2 = msg.A02_LED_NUM_PAD_A2;
    }
    else {
      resolved.A02_LED_NUM_PAD_A2 = ''
    }

    if (msg.A02_LED_NUM_PAD_A3 !== undefined) {
      resolved.A02_LED_NUM_PAD_A3 = msg.A02_LED_NUM_PAD_A3;
    }
    else {
      resolved.A02_LED_NUM_PAD_A3 = ''
    }

    if (msg.A02_LED_NUM_PAD_B1 !== undefined) {
      resolved.A02_LED_NUM_PAD_B1 = msg.A02_LED_NUM_PAD_B1;
    }
    else {
      resolved.A02_LED_NUM_PAD_B1 = ''
    }

    if (msg.A02_LED_NUM_PAD_B2 !== undefined) {
      resolved.A02_LED_NUM_PAD_B2 = msg.A02_LED_NUM_PAD_B2;
    }
    else {
      resolved.A02_LED_NUM_PAD_B2 = ''
    }

    if (msg.A02_LED_NUM_PAD_B3 !== undefined) {
      resolved.A02_LED_NUM_PAD_B3 = msg.A02_LED_NUM_PAD_B3;
    }
    else {
      resolved.A02_LED_NUM_PAD_B3 = ''
    }

    if (msg.A02_LED_NUM_PAD_C1 !== undefined) {
      resolved.A02_LED_NUM_PAD_C1 = msg.A02_LED_NUM_PAD_C1;
    }
    else {
      resolved.A02_LED_NUM_PAD_C1 = ''
    }

    if (msg.A02_LED_NUM_PAD_C2 !== undefined) {
      resolved.A02_LED_NUM_PAD_C2 = msg.A02_LED_NUM_PAD_C2;
    }
    else {
      resolved.A02_LED_NUM_PAD_C2 = ''
    }

    if (msg.A02_LED_NUM_PAD_C3 !== undefined) {
      resolved.A02_LED_NUM_PAD_C3 = msg.A02_LED_NUM_PAD_C3;
    }
    else {
      resolved.A02_LED_NUM_PAD_C3 = ''
    }

    if (msg.A02_NUM_PAD_A1 !== undefined) {
      resolved.A02_NUM_PAD_A1 = msg.A02_NUM_PAD_A1;
    }
    else {
      resolved.A02_NUM_PAD_A1 = ''
    }

    if (msg.A02_NUM_PAD_A2 !== undefined) {
      resolved.A02_NUM_PAD_A2 = msg.A02_NUM_PAD_A2;
    }
    else {
      resolved.A02_NUM_PAD_A2 = ''
    }

    if (msg.A02_NUM_PAD_A3 !== undefined) {
      resolved.A02_NUM_PAD_A3 = msg.A02_NUM_PAD_A3;
    }
    else {
      resolved.A02_NUM_PAD_A3 = ''
    }

    if (msg.A02_NUM_PAD_B1 !== undefined) {
      resolved.A02_NUM_PAD_B1 = msg.A02_NUM_PAD_B1;
    }
    else {
      resolved.A02_NUM_PAD_B1 = ''
    }

    if (msg.A02_NUM_PAD_B2 !== undefined) {
      resolved.A02_NUM_PAD_B2 = msg.A02_NUM_PAD_B2;
    }
    else {
      resolved.A02_NUM_PAD_B2 = ''
    }

    if (msg.A02_NUM_PAD_B3 !== undefined) {
      resolved.A02_NUM_PAD_B3 = msg.A02_NUM_PAD_B3;
    }
    else {
      resolved.A02_NUM_PAD_B3 = ''
    }

    if (msg.A02_NUM_PAD_C1 !== undefined) {
      resolved.A02_NUM_PAD_C1 = msg.A02_NUM_PAD_C1;
    }
    else {
      resolved.A02_NUM_PAD_C1 = ''
    }

    if (msg.A02_NUM_PAD_C2 !== undefined) {
      resolved.A02_NUM_PAD_C2 = msg.A02_NUM_PAD_C2;
    }
    else {
      resolved.A02_NUM_PAD_C2 = ''
    }

    if (msg.A02_NUM_PAD_C3 !== undefined) {
      resolved.A02_NUM_PAD_C3 = msg.A02_NUM_PAD_C3;
    }
    else {
      resolved.A02_NUM_PAD_C3 = ''
    }

    if (msg.A03_TOGGLE !== undefined) {
      resolved.A03_TOGGLE = msg.A03_TOGGLE;
    }
    else {
      resolved.A03_TOGGLE = ''
    }

    if (msg.A03_LED !== undefined) {
      resolved.A03_LED = msg.A03_LED;
    }
    else {
      resolved.A03_LED = ''
    }

    if (msg.A04_TOGGLE !== undefined) {
      resolved.A04_TOGGLE = msg.A04_TOGGLE;
    }
    else {
      resolved.A04_TOGGLE = ''
    }

    if (msg.A04_LED_TOP !== undefined) {
      resolved.A04_LED_TOP = msg.A04_LED_TOP;
    }
    else {
      resolved.A04_LED_TOP = ''
    }

    if (msg.A04_LED_BOTTOM !== undefined) {
      resolved.A04_LED_BOTTOM = msg.A04_LED_BOTTOM;
    }
    else {
      resolved.A04_LED_BOTTOM = ''
    }

    if (msg.A05_TOGGLE !== undefined) {
      resolved.A05_TOGGLE = msg.A05_TOGGLE;
    }
    else {
      resolved.A05_TOGGLE = ''
    }

    if (msg.A05_LED !== undefined) {
      resolved.A05_LED = msg.A05_LED;
    }
    else {
      resolved.A05_LED = ''
    }

    return resolved;
    }
};

module.exports = TaskboardPanelA;
