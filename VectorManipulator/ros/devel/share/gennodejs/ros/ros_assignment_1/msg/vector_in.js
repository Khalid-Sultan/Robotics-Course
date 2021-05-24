// Auto-generated. Do not edit!

// (in-package ros_assignment_1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class vector_in {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vector = null;
      this.angle = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('vector')) {
        this.vector = initObj.vector
      }
      else {
        this.vector = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type vector_in
    // Serialize message field [vector]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.vector, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.angle, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type vector_in
    let len;
    let data = new vector_in(null);
    // Deserialize message field [vector]
    data.vector = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_assignment_1/vector_in';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3f752c00d0fcadb1566ee98436f6d75';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point vector
    geometry_msgs/Point angle
    float64 distance
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new vector_in(null);
    if (msg.vector !== undefined) {
      resolved.vector = geometry_msgs.msg.Point.Resolve(msg.vector)
    }
    else {
      resolved.vector = new geometry_msgs.msg.Point()
    }

    if (msg.angle !== undefined) {
      resolved.angle = geometry_msgs.msg.Point.Resolve(msg.angle)
    }
    else {
      resolved.angle = new geometry_msgs.msg.Point()
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = vector_in;
