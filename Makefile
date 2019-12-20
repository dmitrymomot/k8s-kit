.PHONY: help up down info

help: ## Show this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

up: ## Deployment of a service. Usage example: make up api
	@make -f $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))/Makefile apply

down: ## Shut down a service. Usage example: make down api
	@make -f $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))/Makefile delete

restart: down up info ## Restart of service

info: ## Get kubernetes cluster information
	@kubectl get all
	# @kubectl get all --all-namespaces

log: ## Show logs
	@kubectl logs $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS)) --all-containers=true

%:
	@:
