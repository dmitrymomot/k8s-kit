.PHONY: apply delete

apply:
	# https://github.com/bitnami/charts/tree/master/bitnami/mongodb-sharded/
	@helm install mongodb-sharded -f mongo/sharded/values.yaml bitnami/mongodb-sharded

delete:
	@helm delete mongodb-sharded

%:
	@: