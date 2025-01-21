OUTPUT_ROS2_IMAGE=ghcr.io/thomasonzhou/turtlebot-4
TURTLEBOT_DOCKERFILE=turtlebot-4.Dockerfile

build:
	@echo "Building Docker image $(OUTPUT_ROS2_IMAGE)..."
	docker buildx build \
	--tag $(OUTPUT_ROS2_IMAGE) \
	--file $(TURTLEBOT_DOCKERFILE) \
	. 
