.PHONY: run
run:
	sudo ./run.sh

.PHONY: clear
clear:
	sudo clab destroy --topo frr01.clab.yml
	sudo chown -R "${USER}" .
