// Auto-generated. Do not edit!

// (in-package nasa_r2_common_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let visualization_msgs = _finder('visualization_msgs');

//-----------------------------------------------------------

class ParseTableSceneRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParseTableSceneRequest
    // Serialize message field [cmd]
    bufferOffset = _serializer.bool(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParseTableSceneRequest
    let len;
    let data = new ParseTableSceneRequest(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nasa_r2_common_msgs/ParseTableSceneRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fab6d5f499de320aad10749bce1f85cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool cmd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParseTableSceneRequest(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = false
    }

    return resolved;
    }
};

class ParseTableSceneResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.table_found = null;
      this.markers = null;
    }
    else {
      if (initObj.hasOwnProperty('table_found')) {
        this.table_found = initObj.table_found
      }
      else {
        this.table_found = false;
      }
      if (initObj.hasOwnProperty('markers')) {
        this.markers = initObj.markers
      }
      else {
        this.markers = new visualization_msgs.msg.MarkerArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParseTableSceneResponse
    // Serialize message field [table_found]
    bufferOffset = _serializer.bool(obj.table_found, buffer, bufferOffset);
    // Serialize message field [markers]
    bufferOffset = visualization_msgs.msg.MarkerArray.serialize(obj.markers, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParseTableSceneResponse
    let len;
    let data = new ParseTableSceneResponse(null);
    // Deserialize message field [table_found]
    data.table_found = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [markers]
    data.markers = visualization_msgs.msg.MarkerArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += visualization_msgs.msg.MarkerArray.getMessageSize(object.markers);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nasa_r2_common_msgs/ParseTableSceneResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f98d3a69101817a05996e1d8e70bebcc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool table_found
    visualization_msgs/MarkerArray markers
    
    
    ================================================================================
    MSG: visualization_msgs/MarkerArray
    Marker[] markers
    
    ================================================================================
    MSG: visualization_msgs/Marker
    # See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz
    
    uint8 ARROW=0
    uint8 CUBE=1
    uint8 SPHERE=2
    uint8 CYLINDER=3
    uint8 LINE_STRIP=4
    uint8 LINE_LIST=5
    uint8 CUBE_LIST=6
    uint8 SPHERE_LIST=7
    uint8 POINTS=8
    uint8 TEXT_VIEW_FACING=9
    uint8 MESH_RESOURCE=10
    uint8 TRIANGLE_LIST=11
    
    uint8 ADD=0
    uint8 MODIFY=0
    uint8 DELETE=2
    uint8 DELETEALL=3
    
    Header header                        # header for time/frame information
    string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object
    int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later
    int32 type 		                       # Type of object
    int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects
    geometry_msgs/Pose pose                 # Pose of the object
    geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)
    std_msgs/ColorRGBA color             # Color [0.0-1.0]
    duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever
    bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep
    
    #Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
    geometry_msgs/Point[] points
    #Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
    #number of colors must either be 0 or equal to the number of points
    #NOTE: alpha is not yet used
    std_msgs/ColorRGBA[] colors
    
    # NOTE: only used for text markers
    string text
    
    # NOTE: only used for MESH_RESOURCE markers
    string mesh_resource
    bool mesh_use_embedded_materials
    
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
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParseTableSceneResponse(null);
    if (msg.table_found !== undefined) {
      resolved.table_found = msg.table_found;
    }
    else {
      resolved.table_found = false
    }

    if (msg.markers !== undefined) {
      resolved.markers = visualization_msgs.msg.MarkerArray.Resolve(msg.markers)
    }
    else {
      resolved.markers = new visualization_msgs.msg.MarkerArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: ParseTableSceneRequest,
  Response: ParseTableSceneResponse,
  md5sum() { return '077c5efd1df70c6ee9e651d32d6b0351'; },
  datatype() { return 'nasa_r2_common_msgs/ParseTableScene'; }
};
