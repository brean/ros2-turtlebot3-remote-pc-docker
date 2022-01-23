ARG ROS_DISTRO
FROM ros:${ROS_DISTRO}

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
  && apt-get -y install \
    ros-${ROS_DISTRO}-navigation2 \
    ros-${ROS_DISTRO}-nav2-bringup \
    ros-${ROS_DISTRO}-turtlebot3-cartographer \
    ros-${ROS_DISTRO}-turtlebot3-navigation2 \
    ros-${ROS_DISTRO}-turtlebot3-teleop \
    ros-${ROS_DISTRO}-rviz2 \
  && rm -rf /var/lib/apt/lists/*

ARG ROS_DOMAIN_ID=30
ARG TURTLEBOT3_MODEL=burger

# burger, waffle, waffle_pi
ENV TURTLEBOT3_MODEL ${TURTLEBOT3_MODEL}

#TURTLEBOT3 defaults to 30
ENV ROS_DOMAIN_ID ${ROS_DOMAIN_ID}
