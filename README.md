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

- [x] Genesis docker image

- [ ] Nightly builds

- [ ] Deployment ready Dockerfiles
  - [ ] multistage build
  - [ ] rootless
  - [ ] build in separate github genvironment

