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

let trajectory_msgs = _finder('trajectory_msgs');

//-----------------------------------------------------------

class MoveItPluginRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_names = null;
      this.start_joint = null;
      this.goal_joint = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('start_joint')) {
        this.start_joint = initObj.start_joint
      }
      else {
        this.start_joint = [];
      }
      if (initObj.hasOwnProperty('goal_joint')) {
        this.goal_joint = initObj.goal_joint
      }
      else {
        this.goal_joint = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveItPluginRequest
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [start_joint]
    bufferOffset = _arraySerializer.float64(obj.start_joint, buffer, bufferOffset, null);
    // Serialize message field [goal_joint]
    bufferOffset = _arraySerializer.float64(obj.goal_joint, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveItPluginRequest
    let len;
    let data = new MoveItPluginRequest(null);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [start_joint]
    data.start_joint = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [goal_joint]
    data.goal_joint = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joint_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.start_joint.length;
    length += 8 * object.goal_joint.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pp_msgs/MoveItPluginRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b546eca51cee3831a0a21b77c2629df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] joint_names
    float64[] start_joint
    float64[] goal_joint
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveItPluginRequest(null);
    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.start_joint !== undefined) {
      resolved.start_joint = msg.start_joint;
    }
    else {
      resolved.start_joint = []
    }

    if (msg.goal_joint !== undefined) {
      resolved.goal_joint = msg.goal_joint;
    }
    else {
      resolved.goal_joint = []
    }

    return resolved;
    }
};

class MoveItPluginResponse {
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
        this.plan = new trajectory_msgs.msg.JointTrajectory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveItPluginResponse
    // Serialize message field [plan]
    bufferOffset = trajectory_msgs.msg.JointTrajectory.serialize(obj.plan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveItPluginResponse
    let len;
    let data = new MoveItPluginResponse(null);
    // Deserialize message field [plan]
    data.plan = trajectory_msgs.msg.JointTrajectory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += trajectory_msgs.msg.JointTrajectory.getMessageSize(object.plan);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pp_msgs/MoveItPluginResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1406506fbfd269e79e1a93b4e8386da6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    trajectory_msgs/JointTrajectory plan 
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectory
    Header header
    string[] joint_names
    JointTrajectoryPoint[] points
    
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
    string frame_id
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectoryPoint
    # Each trajectory point specifies either positions[, velocities[, accelerations]]
    # or positions[, effort] for the trajectory to be executed.
    # All specified values are in the same order as the joint names in JointTrajectory.msg
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveItPluginResponse(null);
    if (msg.plan !== undefined) {
      resolved.plan = trajectory_msgs.msg.JointTrajectory.Resolve(msg.plan)
    }
    else {
      resolved.plan = new trajectory_msgs.msg.JointTrajectory()
    }

    return resolved;
    }
};

module.exports = {
  Request: MoveItPluginRequest,
  Response: MoveItPluginResponse,
  md5sum() { return '7cd51e786e5ea2edaffb4c8c1c95c872'; },
  datatype() { return 'pp_msgs/MoveItPlugin'; }
};
