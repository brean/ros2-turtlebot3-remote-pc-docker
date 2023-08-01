ARG ROS_DISTRO
FROM brean/ros2-turtlebot3-remote-pc:humble

# Install ds4drv
WORKDIR /opt
RUN git clone https://github.com/naoki-mizuno/ds4drv --branch devel \
    && cd ds4drv \
    && python3 setup.py install

# Build workspace
WORKDIR /root/ros_ws
RUN mkdir src \
    && cd src \
    && git clone https://github.com/naoki-mizuno/ds4_driver \
        --branch ${ROS_DISTRO}-devel
RUN bash -c "source /opt/ros/${ROS_DISTRO}/setup.bash && colcon build"

COPY entrypoint.bash /entrypoint.bash
ENTRYPOINT [ "/entrypoint.bash" ]