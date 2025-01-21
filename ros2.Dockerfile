ARG BASE_ROS2_IMAGE

FROM multiarch/qemu-user-static as qemu
FROM ${BASE_ROS2_IMAGE}

COPY --from=qemu /usr/bin/qemu-* /usr/bin/

RUN apt-get update && apt-get install -y \
    ros-jazzy-foxglove-bridge \
    ros-jazzy-tf2-ros \
    python3-colcon-common-extensions \ 
    build-essential \ 
    ros-jazzy-xacro \
    ros-jazzy-ros-gz

