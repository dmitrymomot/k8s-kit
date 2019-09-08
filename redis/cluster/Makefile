.PHONY: apply delete

apply:
	@kubectl apply -f redis/cluster/storage.yaml -f redis/cluster/redis-master.yaml
	@sleep 10
	@kubectl apply -f redis/cluster/redis-sentinel-service.yaml
	@kubectl apply -f redis/cluster/redis-controller.yaml
	@kubectl apply -f redis/cluster/redis-sentinel-controller.yaml
	@sleep 10
	@kubectl scale rc redis --replicas=3
	@kubectl scale rc redis-sentinel --replicas=3
	@sleep 10
	@kubectl delete pods redis-master

delete:
	@kubectl delete \
		-f redis/cluster/redis-sentinel-controller.yaml \
		-f redis/cluster/redis-controller.yaml \
		-f redis/cluster/redis-sentinel-service.yaml

%:
	@: