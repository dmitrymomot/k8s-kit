.PHONY: apply delete

apply:
	@helm install nats bitnami/nats \
		--set image.pullPolicy="Always"  \
		--set client.service.type="LoadBalancer" \
		--set auth.enabled=false \
		--set clusterAuth.enabled=false

delete:
	@helm delete nats

info:
	@export NATS_USER=$(kubectl get cm --namespace default nats -o jsonpath='{.data.*}' | grep -m 1 user | awk '{print $2}')
	@export NATS_PASS=$(kubectl get cm --namespace default nats -o jsonpath='{.data.*}' | grep -m 1 password | awk '{print $2}')
	@echo "Client credentials:\n\tUser: ${NATS_USER}\n\tPassword: ${NATS_PASS}"

%:
	@: