ARG BASE_ROS2_IMAGE

FROM ${BASE_ROS2_IMAGE}
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    ros-jazzy-demo-nodes-cpp \
    ros-jazzy-foxglove-bridge \
    ros-jazzy-tf2-ros

