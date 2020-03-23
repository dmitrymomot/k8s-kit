# https://github.com/dgraph-io/charts/
# https://github.com/dgraph-io/charts/blob/master/charts/dgraph/README.md

.PHONY: apply delete

apply:
	@helm install dgraph dgraph/dgraph --set ratel.service.type="LoadBalancer"  --set alpha.service.type="LoadBalancer"

delete:
	@helm delete dgraph && \
	kubectl delete pvc -l release=dgraph,chart=dgraph

%:
	@: