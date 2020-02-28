.PHONY: apply delete

apply:
	@helm install mailhog -f mailhog/config.yml stable/mailhog

delete:
	@helm delete mailhog

%:
	@:
