# ROS 2 foxy "REMOTE-PC" navigation in docker
Run turtlebot3-navigation/cartographer in a local docker container so you can run it if you don't have Ubuntu 20.04 installed.

Don't forget to configure ROS_DOMAIN_ID (default 30) and TURTLEBOT3_MODEL (default burger)

ssh to the robot and run:
```bash
export TURTLEBOT3_MODEL=burger
ros2 launch turtlebot3_bringup robot.launch.py
```

1. run `cartographer.bash`
1. in a new window run `./teleop.bash` to control the robot with your keyboard.
1. after you are happy with it run `save_map.bash` in a second terminal.
1. stop the cartographer and run `navigation.bash`.

Note that you can run any command from your terminal by prefixing it with "./turtlebot.bash", take a look at the other bash-scripts in this folder

Don't forget to run `docker-compose down` when you are done.

Based on https://emanual.robotis.com/docs/en/platform/turtlebot3/slam/