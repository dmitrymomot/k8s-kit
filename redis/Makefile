.PHONY: apply delete

apply:
	@kubectl apply \
		-f redis/storage.yml \
		-f redis/deploy.yml \
		-f redis/service.yml

delete:
	@kubectl delete \
		-f redis/service.yml \
		-f redis/deploy.yml \
		-f redis/storage.yml

%:
	@:
