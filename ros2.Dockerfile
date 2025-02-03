ARG BASE_ROS2_IMAGE

FROM multiarch/qemu-user-static as qemu
FROM ${BASE_ROS2_IMAGE}

COPY --from=qemu /usr/bin/qemu-* /usr/bin/

RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-jazzy-foxglove-bridge \
    ros-jazzy-tf2-ros \
    python3-colcon-common-extensions \ 
    python3-colcon-mixin \
    python3-rosdep \
    build-essential \ 
    ros-jazzy-xacro \
    ros-jazzy-ros-gz \
    ~nros-jazzy-rqt* \
    python3-vcstool \
    vim \
    curl \
    ca-certificates \
    wget \
    ninja-build

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
