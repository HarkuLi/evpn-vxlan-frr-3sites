.PHONY: deploy
deploy:
	sudo clab deploy --topo frr01.clab.yml
	./setup-vxlan

.PHONY: destroy
destroy:
	sudo clab destroy --topo frr01.clab.yml --cleanup
	sudo chown -R "${USER}:${USER}" .

.PHONY: PC1.bash
PC1.bash:
	docker exec -it clab-frr01-PC1 bash

.PHONY: PC2.bash
PC2.bash:
	docker exec -it clab-frr01-PC2 bash

.PHONY: PC3.bash
PC3.bash:
	docker exec -it clab-frr01-PC3 bash

.PHONY: router1.bash
router1.bash:
	docker exec -it clab-frr01-router1 bash

.PHONY: router1.vtysh
router1.vtysh:
	docker exec -it clab-frr01-router1 vtysh

.PHONY: router2.bash
router2.bash:
	docker exec -it clab-frr01-router2 bash

.PHONY: router2.vtysh
router2.vtysh:
	docker exec -it clab-frr01-router2 vtysh

.PHONY: router3.bash
router3.bash:
	docker exec -it clab-frr01-router3 bash

.PHONY: router3.vtysh
router3.vtysh:
	docker exec -it clab-frr01-router3 vtysh

.PHONY: route-reflector.bash
route-reflector.bash:
	docker exec -it clab-frr01-route-reflector bash

.PHONY: route-reflector.vtysh
route-reflector.vtysh:
	docker exec -it clab-frr01-route-reflector vtysh

.PHONY: route-reflector.bgp
route-reflector.bgp:
	docker exec -it clab-frr01-route-reflector vtysh -c "show bgp neighbors"
