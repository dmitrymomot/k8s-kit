.PHONY: apply delete

apply:
	@kubectl apply -f nats/streaming/00-prereqs.yaml -f nats/streaming/10-deployment.yaml
	@sleep 10
	@kubectl apply -f nats/streaming/rbac.yaml -f nats/streaming/deployment.yaml
	@sleep 10
	@kubectl get crd
	@kubectl apply -f nats/streaming/cluster.yaml
	@sleep 3
	@kubectl get natsstreamingcluster.streaming.nats.io

delete:
	@kubectl delete \
		-f nats/streaming/cluster.yaml \
		-f nats/streaming/deployment.yaml \
		-f nats/streaming/rbac.yaml \
		-f nats/streaming/10-deployment.yaml \
		-f nats/streaming/00-prereqs.yaml

%:
	@: