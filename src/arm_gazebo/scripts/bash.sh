#!/bin/bash
rostopic pub --once /arm/pos_cmd arm_srv/ik -- 2 2 1
rostopic pub --once /arm/gripper_angle arm_lib/gripper catch
rostopic pub --once /arm/pos_cmd arm_srv/ik -- 1 1 0
rostopic pub --once /arm/gripper_angle arm_lib/gripper  release
rostopic pub --once /arm/pos_cmd arm_srv/ik -- 2 2 1