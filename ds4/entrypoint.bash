#!/bin/bash

if [[ -f /opt/ros/$ROS_DISTRO/setup.bash ]]; then
    source /opt/ros/$ROS_DISTRO/setup.bash
fi

if [[ -f /root/ros_ws/install/setup.bash ]]; then
    source /root/ros_ws/install/setup.bash
fi

exec "$@"