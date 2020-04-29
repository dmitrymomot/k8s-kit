.PHONY: apply delete

apply:
	@helm install etcd \
		--set customResources.createEtcdClusterCRD=true \
		stable/etcd-operator

delete:
	@helm delete etcd

info:
	@echo "1. Watch etcd cluster start"
	@echo "kubectl get pods -l etcd_cluster=etcd-cluster --namespace default -w \n\n"
	@echo "2. Confirm etcd cluster is healthy"
	@echo "kubectl run --rm -i --tty --env=\"ETCDCTL_API=3\" --env="ETCDCTL_ENDPOINTS=http://etcd-cluster-client:2379" --namespace default etcd-test --image quay.io/coreos/etcd --restart=Never -- /bin/sh -c 'watch -n1 \"etcdctl  member list\"' \n\n"
	@echo "Interact with the cluster"
	@echo "kubectl run --rm -i --tty --env ETCDCTL_API=3 --namespace default etcd-test --image quay.io/coreos/etcd --restart=Never -- /bin/sh"
	@echo "/ # etcdctl --endpoints http://etcd-cluster-client:2379 put foo bar"
	@echo "/ # etcdctl --endpoints http://etcd-cluster-client:2379 get foo"
	@echo "OK"
	@echo "(ctrl-D to exit)\n\n"
	@echo "4. Optional"
	@echo "Check the etcd-operator logs"
	@echo "export POD=$(kubectl get pods -l app=etcd-etcd-operator-etcd-operator --namespace default --output name)"
	@echo "kubectl logs ${POD} --namespace=default"

%:
	@: