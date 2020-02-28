.PHONY: apply delete info

apply:
	@kubectl apply -f ingress/nginx/ingress.yml

delete:
	@kubectl delete -f ingress/nginx/ingress.yml

info: ## Get cluster info
	@kubectl get all --namespace=ingress-nginx

%:
	@:
