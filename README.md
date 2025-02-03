# Purpose

- X11 forwarding: use GUIs with docker
- User home copy: use the same directories inside and outside the container
- NVIDIA GPU support

# Usage 

1. [Install Docker](https://docs.docker.com/engine/install/)

2. [Install uv](https://docs.astral.sh/uv/getting-started/installation/)

3. Run start.py using uv
```sh
uv run start.py
```
If you have an NVIDIA GPU, [make sure drivers are installed](https://ubuntu.com/server/docs/nvidia-drivers-installation), and uncomment out the arguments "--nvidia auto".

# TODO

- [x] Setup ROS2 Jazzy
- [x] Setup Foxglove
- [x] Test [rocker](https://github.com/osrf/rocker)

- [ ] Add CUDA

- [ ] Nightly builds

- [ ] Deployment ready Dockerfiles
  - [ ] multistage build
  - [ ] rootless
  - [ ] build in separate github genvironment

