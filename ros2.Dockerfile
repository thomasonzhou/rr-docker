ARG BASE_ROS2_IMAGE

FROM ${BASE_ROS2_IMAGE}

RUN apt-get update && apt-get install -y \
    ros-jazzy-foxglove-bridge \
    ros-jazzy-tf2-ros \
    python3-colcon-common-extensions \ 
    build-essential \ 
    ros-jazzy-xacro \
    ros-jazzy-ros-gz

