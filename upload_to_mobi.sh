#!/bin/sh

host=mobi_theta
remote_path="/home/mobi/ros2_ws"

# scp -r ./src/*  $host:$remote_path/src
rsync -av --progress ./src/* $host:$remote_path/src
ssh $host "cd $remote_path/ && source $remote_path/install/setup.bash && colcon build"