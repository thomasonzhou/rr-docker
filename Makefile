BASE_ROS2_IMAGE=ros:jazzy-ros-core
OUTPUT_ROS2_IMAGE=ghcr.io/thomasonzhou/rr-ros2:latest
ROS2_DOCKERFILE=ros2.Dockerfile

build-ros2:
	@echo "Building Docker image $(OUTPUT_ROS2_IMAGE)..."
	docker build --tag $(OUTPUT_ROS2_IMAGE) --file $(ROS2_DOCKERFILE) . \
	--build-arg BASE_ROS2_IMAGE=$(BASE_ROS2_IMAGE)

push-ros2: # requires push permission (i.e. login ghcr.io)
	@echo "Uploading Docker image $(OUTPUT_ROS2_IMAGE)..."
	docker push $(OUTPUT_ROS2_IMAGE)

run-ros2:
	@echo "Running Docker image $(OUTPUT_ROS2_IMAGE)..."
	docker run --interactive --tty --rm $(OUTPUT_ROS2_IMAGE)

.PHONY: build-ros2 push-ros2 run-ros2
