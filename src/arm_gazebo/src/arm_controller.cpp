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
#include "arm_lib/Angles.h"
#include <thread>
#include <math.h>
namespace gazebo
{
  class ArmModelPlugin : public ModelPlugin
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
      // Store the pointer to the model
      this->model = _parent;
      std_msgs::String msg;
      std::stringstream ss;
      this->jointController = this->model->GetJointController();
      
      this->pid = common::PID(30.0, 10.0, 10.0);
      
     
      this->rosNode.reset(new ros::NodeHandle("gazebo_client"));
       
      ros::SubscribeOptions so =
          ros::SubscribeOptions::create<arm_lib::Angles>(
              "/" + this->model->GetName() + "/pos_cmd",
              1,
              boost::bind(&ArmModelPlugin::OnRosMsg, this, _1),
              ros::VoidPtr(), &this->rosQueue);
      
      this->rosSub = this->rosNode->subscribe(so);
      this->angle_pub = this->rosNode->advertise<std_msgs::String>("anglepos", 1000);
      this->rosAngleQueueThread = std::thread(std::bind(&ArmModelPlugin::Publish, this));
      this->rosQueueThread = std::thread(std::bind(&ArmModelPlugin::QueueThread, this));

      this->updateConnection = event::Events::ConnectWorldUpdateBegin(
          std::bind(&ArmModelPlugin::OnUpdate, this));
    }

  public:
    void Publish()
    {
    
      ros::Rate loop_rate(10);
      while (ros::ok())
      {
          std_msgs::String msg;
          std::stringstream ss;
          msg.data = ss.str();
          this->GetJointPostion("base_arm1_joint");
          this->GetJointPostion("arm1_arm2_joint");
          this->GetJointPostion("arm2_arm3_joint");
          this->GetJointPostion("arm3_arm4_joint");
          angle_pub.publish(msg);
           
       }
      ros::spinOnce();
      loop_rate.sleep();
    }
    // Called by the world update start event
  public:
    void OnUpdate()
   {
      
      
      
		
  
    }
  
  public:
    void OnRosMsg(const arm_lib::Angles::ConstPtr &_msg)

    {
     this->SetJointAngle("base_arm1_joint",_msg->arm1_angle);
      this->SetJointAngle("arm1_arm2_joint",_msg->arm2_angle);
      this->SetJointAngle("arm2_arm3_joint",_msg->arm3_angle);
      this->SetJointAngle("arm3_arm4_joint",_msg->arm4_angle);
    
      

    }
 public:
   void GetJointPostion(std::string joint_name){

      
           double al = physics::JointState(this->model->GetJoint(joint_name)).Position(0);
           degree =  al * 180 / M_PI;
           std::cout<<"current angle of "<< joint_name << degree << std::endl;

   }
  public:
   void SetJointAngle(std::string joint_name , float angle ){
      float rad = M_PI * angle / 180;
      std::string name = this->model->GetJoint(joint_name)->GetScopedName();
      this->jointController->SetPositionPID(name, pid);
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
  
 
  private: float degree =0;
 
  private:
     std::unique_ptr<ros::NodeHandle> rosNode;

  private:
    ros::Publisher angle_pub;

  private:
    ros::Subscriber rosSub;

  private:
    ros::CallbackQueue rosQueue;

  private:
    std::thread rosQueueThread, rosAngleQueueThread;

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
  GZ_REGISTER_MODEL_PLUGIN(ArmModelPlugin)
}