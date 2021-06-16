from __future__ import print_function
from  arm_srv.srv import ik,ikResponse
import rospy
import tinyik as Ik

def inverse_kinematics(req):
    arm = Ik.Actuator([
        "z",[0.0,0.0,0.15],
        "x",[0.0,0.0,2.0],
        "x",[0.0,0.0,1.0],
        "x",[0.0,0.0,0.5],
        "y",[0.0,0.0,0.1],
        "z",[0.0,0.0,0.1]])
    arm.ee = [req.x,req.y,req.z]
    return ikResponse(arm.angles) 
def inverse_kinematics_server():
    rospy.init_node('inverse_kinematics_server')
    s = rospy.Service('inverse_kinematics', ik, inverse_kinematics)
    print(" inverse server ready")
    rospy.spin()
if __name__ == "__main__":
    inverse_kinematics_server()