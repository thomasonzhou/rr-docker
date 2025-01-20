# Usage 

[Install Docker for your system.](https://docs.docker.com/engine/install/)

Pull the latest version of the ros2 image. This is a *development* image, an image optimized for deployment will be added later.

```sh
docker pull ghcr.io/thomasonzhou/rr-ros2:latest
```

# TODO

- [x] Setup ROS2 Jazzy
- [x] Setup Foxglove
- [x] Test [rocker](https://github.com/osrf/rocker)

- [ ] Deployment ready Dockerfile
  - [ ] multistage build
  - [ ] rootless
  - [ ] build in separate github genvironment
