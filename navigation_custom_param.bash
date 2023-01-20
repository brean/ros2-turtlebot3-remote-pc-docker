# run a custom nav2 installation that uses the correct robot_model
# see https://github.com/ROBOTIS-GIT/turtlebot3/issues/884
./remote.bash ros2 launch turtlebot3_navigation2 navigation2.launch.py map:=/opt/ros/humble/share/nav2_bringup/maps/turtlebot3_world.yaml params_file:=/root/turtlebot3_navigation2_fix/param/burger.yaml