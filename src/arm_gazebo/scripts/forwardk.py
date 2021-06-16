from __future__ import print_function
from  arm_srv.srv import fk,fkResponse
import rospy
import numpy as np

def rotataionx(rad):

    rotx = np.array([[1,0,0 ,0],
    [0,np.cos(rad),-np.sin(rad),0],
    [0,np.sin(rad),np.cos(rad),0],
    [0,0,0,1]])
    return rotx
def rotataiony(rad):
    roty = np.array([[ np.cos(rad),0,np.sin(rad) ,0],
    [0,1,0,0],
    [-np.sin(rad),0,np.cos(rad),0],
    [0,0,0,1]])
    return roty
def rotationz(rad):
    rotz = np.array([[np.cos(rad),-np.sin(rad),0 ,0],
   [np.sin(rad),np.cos(rad),0,0],
   [0,0,1,0],
    [0,0,0,1]])
    return rotz
def Tz(d):
    m = np.eye(4)
    m[2,3] = d
    return m
def forward_kinematics(req):
    M1 = Tz(0.1)
    M2 = rotationz(np.radians(req.angle1)).dot(Tz(0.05))
    M3 = rotataionx(np.radians(req.angle2)).dot(Tz(2.0))
    M4 = rotataionx(np.radians(req.angle3)).dot(Tz(1.0))
    M5 = rotataionx(np.radians(req.angle4)).dot(Tz(0.5))
    M6 = rotataiony(np.radians(req.angle5)).dot(Tz(0.1))
    M7 = rotationz(np.radians(req.palm)).dot(Tz(0.1))
    M8 = Tz(0.3)
    M = ((((((M1.dot(M2)).dot(M3)).dot(M4)).dot(M5)).dot(M6)).dot(M7)).M8
    x = M[0]
    y = M[1]
    z = M[2]
    return fkResponse(x,y,z)
def forward_kinematics_server():
    rospy.init_node('forward_kinematics_server')
    s = rospy.Service('forward_kinematics', fk, forward_kinematics)
    print("server ready")
    rospy.spin()
def invers_kinematics
if __name__ == "__main__":
    forward_kinematics_server()