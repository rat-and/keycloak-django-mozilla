CURR_PATH = $(shell pwd)
APP_NAME = $(shell echo "keycloak-django-mozilla")

.PHONY: build-dev-env run-dev-env down-dev-env

# Build dev instance on your local machine
build-dev-env:
	@docker-compose \
 		--file docker-compose.yml \
 		--project-name $(APP_NAME) \
 		build
	@echo "[DEV-INFO] DEV instance(s) were successfully built!"

# Run DEV instance
run-dev-env:
	@docker-compose \
		--file docker-compose.yml up \
		--detach
	@echo "[DEV-INFO] DEV instance(s) were successfully started! Launch may take a while...."

# Stop and clear DEV instance
down-dev-env:
	@docker-compose \
		--file docker-compose.yml \
 		down --remove-orphans
	@echo "[DEV-INFO] DEV instances were successfully stopped."
