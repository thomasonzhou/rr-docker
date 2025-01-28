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

# RUN apt-get install -y wget gpg && \
# wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && \
# sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg && \
# echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null && \
# rm -f packages.microsoft.gpg && \
# apt install -y apt-transport-https && \
# apt update -y && \
# apt install -y code

RUN existing_user_by_uid=`getent passwd "$UID" | cut -f1 -d: || true` && 	if [ -n "${existing_user_by_uid}" ]; then userdel -r "${existing_user_by_uid}"; fi && 	existing_user_by_name=`getent passwd $(whoami)" | cut -f1 -d: || true` && 	existing_user_uid=`getent passwd $(whoami) | cut -f3 -d: || true` && 	if [ -n "${existing_user_by_name}" ]; then find / -uid ${existing_user_uid} -exec chown -h $UID {} + || true ; find / -gid ${existing_user_uid} -exec chgrp -h $UID {} + || true ; fi && 	if [ -n "${existing_user_by_name}" ]; then userdel -r "${existing_user_by_name}"; fi && 	existing_group_by_gid=`getent group "100" | cut -f1 -d: || true` && 	if [ -z "${existing_group_by_gid}" ]; then   	groupadd -g "100" $(whoami)"; 	fi && 	useradd --no-log-init --no-create-home --uid "$UID" -s /bin/bash -c "" -g "100" -d "$HOME/$(whoami)" $(whoami)" && 	echo $(whoami) ALL=NOPASSWD: ALL" >> /etc/sudoers.d/rocker

WORKDIR $HOME/$(whoami)
USER $(whoami)
