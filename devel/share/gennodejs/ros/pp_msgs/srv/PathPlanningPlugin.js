// Auto-generated. Do not edit!

// (in-package pp_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PathPlanningPluginRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.costmap_ros = null;
      this.width = null;
      this.height = null;
      this.start = null;
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('costmap_ros')) {
        this.costmap_ros = initObj.costmap_ros
      }
      else {
        this.costmap_ros = [];
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = 0;
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathPlanningPluginRequest
    // Serialize message field [costmap_ros]
    bufferOffset = _arraySerializer.int32(obj.costmap_ros, buffer, bufferOffset, null);
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = _serializer.int32(obj.start, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = _serializer.int32(obj.goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathPlanningPluginRequest
    let len;
    let data = new PathPlanningPluginRequest(null);
    // Deserialize message field [costmap_ros]
    data.costmap_ros = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.costmap_ros.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pp_msgs/PathPlanningPluginRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a6b528d357d7086cc62b1bf2dbac8be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] costmap_ros
    int32 width
    int32 height
    int32 start
    int32 goal 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathPlanningPluginRequest(null);
    if (msg.costmap_ros !== undefined) {
      resolved.costmap_ros = msg.costmap_ros;
    }
    else {
      resolved.costmap_ros = []
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = 0
    }

    if (msg.goal !== undefined) {
      resolved.goal = msg.goal;
    }
    else {
      resolved.goal = 0
    }

    return resolved;
    }
};

class PathPlanningPluginResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plan = null;
    }
    else {
      if (initObj.hasOwnProperty('plan')) {
        this.plan = initObj.plan
      }
      else {
        this.plan = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathPlanningPluginResponse
    // Serialize message field [plan]
    bufferOffset = _arraySerializer.int32(obj.plan, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathPlanningPluginResponse
    let len;
    let data = new PathPlanningPluginResponse(null);
    // Deserialize message field [plan]
    data.plan = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.plan.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pp_msgs/PathPlanningPluginResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd00db495743883c1d9a4cf3d0844ceac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] plan
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathPlanningPluginResponse(null);
    if (msg.plan !== undefined) {
      resolved.plan = msg.plan;
    }
    else {
      resolved.plan = []
    }

    return resolved;
    }
};

module.exports = {
  Request: PathPlanningPluginRequest,
  Response: PathPlanningPluginResponse,
  md5sum() { return '9d98043111b72f254c7b31083eb22c8c'; },
  datatype() { return 'pp_msgs/PathPlanningPlugin'; }
};
