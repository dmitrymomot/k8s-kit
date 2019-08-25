.PHONY: apply delete

apply:
	@kubectl apply \
		-f pg/config.yml \
		-f pg/storage.yml \
		-f pg/deploy.yml \
		-f pg/external/service.yml

delete:
	@kubectl delete \
		-f pg/external/service.yml \
		-f pg/deploy.yml \
		-f pg/storage.yml \
		-f pg/config.yml

%:
	@:
