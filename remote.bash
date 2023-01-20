#!/bin/bash
xhost +local:root
docker-compose run remote_pc $@
xhost -local:root