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
    ros-jazzy-ros-gz \
    vim

RUN apt-get install -y wget gpg && \
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && \
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg && \
    echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null && \
    rm -f packages.microsoft.gpg && \
    apt install -y apt-transport-https && \
    apt update -y && \
    apt install -y code
