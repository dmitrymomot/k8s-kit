.PHONY: apply delete

apply:
	@helm install nats bitnami/nats \
		--set image.pullPolicy="Always"  \
		--set client.service.type="LoadBalancer" \
		--set auth.enabled=false \
		--set clusterAuth.enabled=false

delete:
	@helm delete nats

%:
	@: