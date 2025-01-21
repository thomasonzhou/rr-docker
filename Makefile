BASE_ROS2_IMAGE=ros:jazzy-ros-core
OUTPUT_ROS2_IMAGE=ghcr.io/thomasonzhou/rr-ros2
ROS2_DOCKERFILE=ros2-jazzy.Dockerfile

build-ros2:
	@echo "Building Docker image $(OUTPUT_ROS2_IMAGE)..."
	docker buildx build \
	--tag $(OUTPUT_ROS2_IMAGE) \
	--file $(ROS2_DOCKERFILE) \
	--push \
	. \
	--build-arg BASE_ROS2_IMAGE=$(BASE_ROS2_IMAGE)
# --platform linux/arm64,linux/amd64

push-ros2: # requires push permission (i.e. login ghcr.io)
	@echo "Uploading Docker image $(OUTPUT_ROS2_IMAGE)..."
	docker push $(OUTPUT_ROS2_IMAGE)

run-ros2:
	@echo "Running Docker image $(OUTPUT_ROS2_IMAGE)..."
	docker run --interactive --tty --rm $(OUTPUT_ROS2_IMAGE)


FOXGLOVE_PORT=8765
foxglove:
	@echo "starting foxglove on port $(FOXGLOVE_PORT)..."
	docker run --rm -it -p 8765:8765 $(OUTPUT_ROS2_IMAGE) ros2 launch foxglove_bridge foxglove_bridge_launch.xml

.PHONY: build-ros2 push-ros2 run-ros2 foxglove

