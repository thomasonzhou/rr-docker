FROM ros:humble-ros-core

RUN echo "export TURTLEBOT3_MODEL=burger" >> /root/.bashrc
ENV ROS_DISTRO=humble
RUN apt update && \
    apt install -y \
    ros-$ROS_DISTRO-navigation2 \
    ros-$ROS_DISTRO-nav2-bringup \
    ros-$ROS_DISTRO-turtlebot3-gazebo
