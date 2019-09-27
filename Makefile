build-nix:
	nix-shell shell.nix --run 'make build'
build:
	cargo build
shell:
	nix-shell shell.nix
