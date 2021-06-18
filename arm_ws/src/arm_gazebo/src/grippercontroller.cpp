#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>
#include "ros/ros.h"
#include "ros/callback_queue.h"
#include "ros/subscribe_options.h"
#include "std_msgs/Float32.h"
#include "std_msgs/String.h"
#include "arm_lib/gripper.h"
#include <thread>
#include <math.h>
namespace gazebo
{
  class GripperPlugin : public ModelPlugin
  {
  public:
    void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
    {

      if (!ros::isInitialized())
      {
        int argc = 0;
        char **argv = NULL;
        ros::init(argc, argv, "gazebo_client", ros::init_options::NoSigintHandler);
      }
     
      this->model = _parent;
     
      this->jointController = this->model->GetJointController();
      
      this->pid = common::PID(5.0, 0.0, 0.0);
      
     
      this->rosNode.reset(new ros::NodeHandle("gazebo_client"));
       
      ros::SubscribeOptions so =
          ros::SubscribeOptions::create<arm_lib::gripper>(
              "/" + this->model->GetName() + "/gripper_angle",
              1,
              boost::bind(&GripperPlugin::OnRosMsg, this, _1),
              ros::VoidPtr(), &this->rosQueue);
      this->rosSub = this->rosNode->subscribe(so);
      this->rosQueueThread = std::thread(std::bind(&GripperPlugin::QueueThread, this));

      this->jointController = this->model->GetJointController();
      this->jointController->Reset();
      this->jointController->AddJoint(model->GetJoint("palm_left_finger"));
     this->jointController->AddJoint(model->GetJoint("palm_right_finger"));



    } 
  
  public:
    void OnRosMsg(const arm_lib::gripper::ConstPtr &_msg)

    {
     this->SetJointAngle("palm_left_finger",_msg->left_finger);
     this->SetJointAngle("palm_right_finger",_msg->right_finger);

    }
 
  public:
   void SetJointAngle(std::string joint_name , float angle ){
      float rad = M_PI * angle / 180;
      std::string name = this->model->GetJoint(joint_name)->GetScopedName();
      this->jointController->SetPositionTarget(name, rad);
      this->jointController->Update();

   }
  private:
    void QueueThread()
    {
      static const double timeout = 0.01;
      while (this->rosNode->ok())
      {
        this->rosQueue.callAvailable(ros::WallDuration(timeout));
      }
    }
  
 
 
  private:
     std::unique_ptr<ros::NodeHandle> rosNode;

  private:
    ros::Publisher gripper_pub;

  private:
    ros::Subscriber rosSub;

  private:
    ros::CallbackQueue rosQueue;

  private:
    std::thread rosQueueThread;
    // Pointer to the model
  private:
    physics::ModelPtr model;

  private:
    physics::JointControllerPtr jointController;
    // Pointer to the update event connection
  private:
    event::ConnectionPtr updateConnection;

  private:
    common::PID pid;
  };

  // Register this plugin with the simulator
  GZ_REGISTER_MODEL_PLUGIN(GripperPlugin)
}
