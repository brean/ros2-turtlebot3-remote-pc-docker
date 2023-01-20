# ROS 2 foxy "REMOTE-PC" navigation in docker
**Note that you don't need to run the build script, the image is pushed to dockerhub, just run `docker-compose pull`!**

Run turtlebot3-navigation/cartographer in a local docker container.

# Motivation
This allows you either to communicate with a robot that runs ROS 2-foxy while your PC runs another Linux operating system or if you want to test without a full ROS-installation on your PC.

We assume you like to run with a simulated robot in Gazebo and use the same network, take a look at [ros2-turtlebot3-gazebo-docker](../ros2-turtlebot3-gazebo-docker) repository.

## Installation and configuration
1. Install docker. Make sure you have the right version for your graphic-card installed (e.g. [docker-nvidia2](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker) for NVIDIA graphics cards)!
1. Configure the network. If you are NOT using the Gazebo Simulation from [ros2-turtlebot3-gazebo-docker](../ros2-turtlebot3-gazebo-docker) but real hardware you probably want to set the network to `network_mode: host` and remove the `networks`-entry in the `docker-compose.yml` file.
1. (optional) Configure ROS_DOMAIN_ID (default 30) and TURTLEBOT3_MODEL (default burger) according to your hardware
1. (optional) If you do not like to use the simulated environment with the `turtlebot3_world`-map either
   1. Create a map with the cartographer (see [Mapping and navigation with real hardware](#mapping-and-navigation-with-real-hardware)) or if you already have a map
   1. Copy your map to the `map`-folder and change the path for the `map:=`-parameter in the `navigation.bash`-file accordingly

## Example
### Mapping and navigation with real hardware
If you have ROS 2 foxy installed on your turtlebot ssh to the robot and run:
```bash
export TURTLEBOT3_MODEL=burger
ros2 launch turtlebot3_bringup robot.launch.py
```

1. run `cartographer.bash`
1. in a new window run `./teleop.bash` to control the robot with your keyboard.
1. after you are happy with it run `save_map.bash` in a second terminal.
1. stop the cartographer and run `navigation.bash`.

Note that you can run any command from your terminal by prefixing it with "./turtlebot.bash", take a look at the other bash-scripts in this folder

### Autonomous navigation in simulation
See [ros2-turtlebot3-gazebo-docker](https://github.com/brean/ros2-turtlebot3-gazebo-docker) for the integration of a simulated ROS 2 turtlebot using the docker-container and scripts from this repo for the "Remote-PC".

## Cleanup
Don't forget to run `docker-compose down` when you are done.

## Contributing

Please use the [issue tracker](https://github.com/brean/ros-turtlebot3-navigation-docker/issues) to submit bug reports and feature requests. Please use merge requests as described [here](/CONTRIBUTING.md) to add/adapt functionality. 

## License

This code is distributed under the [3-clause BSD license](https://opensource.org/licenses/BSD-3-Clause).

## Maintainer / Authors / Contributers

Andreas Bresser, andreas.bresser@dfki.de

## Attribution

Based on the official turtlebot 3 ROS 2 navigation tutorial: https://emanual.robotis.com/docs/en/platform/turtlebot3/slam/
