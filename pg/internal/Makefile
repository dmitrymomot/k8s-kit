.PHONY: apply delete

apply:
	@kubectl apply \
		-f pg/config.yml \
		-f pg/storage.yml \
		-f pg/deploy.yml \
		-f pg/internal/service.yml

delete:
	@kubectl delete \
		-f pg/internal/service.yml \
		-f pg/deploy.yml \
		-f pg/storage.yml \
		-f pg/config.yml

%:
	@:
