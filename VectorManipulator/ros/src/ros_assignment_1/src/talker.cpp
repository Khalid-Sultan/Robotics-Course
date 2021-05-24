#include "cmath"
#include "ros/ros.h"
#include "ros_assignment_1/VectorInput.h"
#include "ros_assignment_1/VectorOutput.h"


void multiplyMatrices(double firstMatrix[][3], double secondMatrix[][3], double mult[][3], int rowFirst, int columnFirst, int rowSecond, int columnSecond)
{
  int i, j, k;
  for(i = 0; i < rowFirst; ++i)
  {
    for(j = 0; j < columnSecond; ++j)
    {
      mult[i][j] = 0;
    }
  }
 for(i = 0; i < rowFirst; ++i)
  {
    for(j = 0; j < columnSecond; ++j)
    {
      for(k=0; k<columnFirst; ++k)
      {
        mult[i][j] += firstMatrix[i][k] * secondMatrix[k][j];
      }
    }
  }
}

int main(int argc, char **argv)
{
  // ROS objects
  ros::init(argc, argv, "talker");
  ros::NodeHandle n;
  ros::Publisher pub = n.advertise<ros_assignment_1::VectorOutput>("vector", 1);
  ros::Rate loop_rate(10);

  // loop control
  while (ros::ok())
  {
    ros_assignment_1::VectorInput inp;
    std::cout << "X: ";
    std::cin >> inp.x;
    std::cout << "Y: ";
    std::cin >> inp.y;
    std::cout << "Z: ";
    std::cin >> inp.z;
    std::cout << "alpha: ";
    std::cin >> inp.alpha;
    std::cout << "beta: ";
    std::cin >> inp.beta;
    std::cout << "gamma: ";
    std::cin >> inp.gamma;
    std::cout << "dx: ";
    std::cin >> inp.dx;
    std::cout << "dy: ";
    std::cin >> inp.dy;
    std::cout << "dz: ";
    std::cin >> inp.dz;

    inp.alpha = inp.alpha*3.14159/180;
    inp.beta = inp.beta*3.14159/180;
    inp.gamma = inp.gamma*3.14159/180;
    
    //Rotate
    double rotation_matrix_alpha[3][3] = {
      {1,0,0},{0, cos(inp.alpha), sin(inp.alpha)},{0,-1*sin(inp.alpha),cos(inp.alpha)}
    };
    double rotation_matrix_beta[3][3] = {
      {cos(inp.beta), 0, -1*sin(inp.beta)},{0,1,0},{sin(inp.beta),0,cos(inp.beta)}
    };
    double rotation_matrix_gamma[3][3] = {
      {cos(inp.gamma), sin(inp.gamma),0},{-1*sin(inp.gamma),cos(inp.gamma),0},{0,0,1}
    };
    double matrix[][3] = {inp.x, inp.y, inp.z};
    double mult[1][3];
    multiplyMatrices(matrix, rotation_matrix_alpha, mult, 1,3, 3, 3);

    std::cout << mult[0][0] << " " << mult[0][1] << " " << mult[0][2] << std::endl;

    double mult_2[1][3];
    multiplyMatrices(mult, rotation_matrix_beta, mult_2, 1,3, 3, 3);

    std::cout << mult_2[0][0] << " " << mult_2[0][1] << " " << mult_2[0][2] << std::endl;

    double mult_3[1][3];
    multiplyMatrices(mult_2, rotation_matrix_gamma, mult_3, 1,3, 3, 3);

    std::cout << mult_3[0][0] << " " << mult_3[0][1] << " " << mult_3[0][2] << std::endl;

    ros_assignment_1::VectorOutput output;
    output.x = mult_3[0][0] + inp.dx; 
    output.y = mult_3[0][1] + inp.dy;
    output.z = mult_3[0][2] + inp.dz;

    pub.publish(output);
    ros::spinOnce();

    loop_rate.sleep();
  }


  return 0;
}


//Given vector 20,7,5
//Rotate around x by 30 - 20, 3.56218, 7.83013
//Rotate around y by 45 - 19.67887, 3.56218, -8.6054
//Rotate around z by 90 - -3.56218, 19.67887, -8.6054
//Translate all of them by 1

// -2.5 20.67 7.6
