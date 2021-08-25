#!/bin/bash
xhost +local:root
docker-compose run turtlebot $@
xhost -local:root