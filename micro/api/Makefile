.PHONY: apply delete

apply:
	@kubectl apply \
		-f micro/api/deploy2.yml \
		-f micro/api/service2.yml

delete:
	@kubectl delete \
		-f micro/api/deploy2.yml \
		-f micro/api/service2.yml

%:
	@: