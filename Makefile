BASE_ROS2_IMAGE=osrf/ros:jazzy-desktop-full
OUTPUT_ROS2_IMAGE=ros2-reazon:latest
ROS2_DOCKERFILE=ros2.Dockerfile

build-ros2:
	@echo "Building Docker image $(OUTPUT_ROS2_IMAGE)..."
	docker build --tag $(OUTPUT_ROS2_IMAGE) --file $(ROS2_DOCKERFILE) . \
	--build-arg BASE_ROS2_IMAGE=$(BASE_ROS2_IMAGE)

run-ros2:
	@echo "Running Docker image $(OUTPUT_ROS2_IMAGE)..."
	docker run --interactive --tty --rm $(OUTPUT_ROS2_IMAGE)

.PHONY: build-ros2 run-ros2
