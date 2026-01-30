#------------------------------
# Variables
#------------------------------
# Services name
APP_SERVICE=app
MYSQL_SERVICE=mysql
REDIS_SERVICE=redis
MEILISEARCH_SERVICE=meilisearch

#------------------------------
# Docker Compose Commands
#------------------------------
up: ## Start Sail Docker containers
	@echo "===== Starting Docker containers ====="
	@sail up -d

down: ## Stop Sail Docker containers
	@echo "===== Stopping Docker containers ====="
	@sail down

#------------------------------
# Help
#------------------------------
help: ## List make commands
	@echo "===== Listing Make Commands ====="
	@grep -E '^[a-zA-Z0-9_-]+:.*##' $(MAKEFILE_LIST) | sort | awk -F':|##' '{printf "\033[36m%-15s\033[0m %s\n", $$1, $$3}'