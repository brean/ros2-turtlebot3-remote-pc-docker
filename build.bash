#!/bin/bash
time docker build --build-arg ROS_DISTRO=humble -t brean/ros2-turtlebot3-remote-pc:humble .
time docker push brean/ros2-turtlebot3-remote-pc:humble
# building takes around 9 minutes on an i7-8550U with fast internet