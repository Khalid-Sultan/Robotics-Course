// Auto-generated. Do not edit!

// (in-package arm_lib.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Angles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arm1_angle = null;
      this.arm2_angle = null;
      this.arm3_angle = null;
      this.arm4_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('arm1_angle')) {
        this.arm1_angle = initObj.arm1_angle
      }
      else {
        this.arm1_angle = 0.0;
      }
      if (initObj.hasOwnProperty('arm2_angle')) {
        this.arm2_angle = initObj.arm2_angle
      }
      else {
        this.arm2_angle = 0.0;
      }
      if (initObj.hasOwnProperty('arm3_angle')) {
        this.arm3_angle = initObj.arm3_angle
      }
      else {
        this.arm3_angle = 0.0;
      }
      if (initObj.hasOwnProperty('arm4_angle')) {
        this.arm4_angle = initObj.arm4_angle
      }
      else {
        this.arm4_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Angles
    // Serialize message field [arm1_angle]
    bufferOffset = _serializer.float32(obj.arm1_angle, buffer, bufferOffset);
    // Serialize message field [arm2_angle]
    bufferOffset = _serializer.float32(obj.arm2_angle, buffer, bufferOffset);
    // Serialize message field [arm3_angle]
    bufferOffset = _serializer.float32(obj.arm3_angle, buffer, bufferOffset);
    // Serialize message field [arm4_angle]
    bufferOffset = _serializer.float32(obj.arm4_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Angles
    let len;
    let data = new Angles(null);
    // Deserialize message field [arm1_angle]
    data.arm1_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm2_angle]
    data.arm2_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm3_angle]
    data.arm3_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm4_angle]
    data.arm4_angle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arm_lib/Angles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd1b7ee805afcab3ec788a0b100202f1a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 arm1_angle
    float32 arm2_angle
    float32 arm3_angle
    float32 arm4_angle 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Angles(null);
    if (msg.arm1_angle !== undefined) {
      resolved.arm1_angle = msg.arm1_angle;
    }
    else {
      resolved.arm1_angle = 0.0
    }

    if (msg.arm2_angle !== undefined) {
      resolved.arm2_angle = msg.arm2_angle;
    }
    else {
      resolved.arm2_angle = 0.0
    }

    if (msg.arm3_angle !== undefined) {
      resolved.arm3_angle = msg.arm3_angle;
    }
    else {
      resolved.arm3_angle = 0.0
    }

    if (msg.arm4_angle !== undefined) {
      resolved.arm4_angle = msg.arm4_angle;
    }
    else {
      resolved.arm4_angle = 0.0
    }

    return resolved;
    }
};

module.exports = Angles;
