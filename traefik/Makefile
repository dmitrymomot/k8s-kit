.PHONY: apply delete

apply:
	@helm install traefik stable/traefik \
		--namespace kube-system \
		--set dashboard.enabled=true \
		--set serviceType=LoadBalancer

delete:
	@helm delete traefik -n kube-system

info: host
	@echo "--- Traefik Cluster Details ---"
	@kubectl get all -n kube-system

host:
	@kubectl describe service traefik -n kube-system | grep Ingress | awk '{print $3}'

%:
	@: