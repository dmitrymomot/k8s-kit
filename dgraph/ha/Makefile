.PHONY: apply delete

apply:
	@rm -Rvf ~/.docker/Volumes/datadir-dgraph* &&  \
	helm install dgraph dgraph/dgraph --set ratel.service.type="LoadBalancer"  --set alpha.service.type="LoadBalancer"

delete:
	@helm delete dgraph && \
	sleep 10  && \
	rm -Rvf ~/.docker/Volumes/datadir-dgraph*

%:
	@: