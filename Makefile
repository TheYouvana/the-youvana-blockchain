.PHONY: install
install:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

.PHONY: init
init:
	./scripts/init.sh

.PHONY: check
check:
	cargo check

.PHONY: test
test:
	cargo test --all

.PHONY: run
run:
	./target/release/the-youvana-node --dev

.PHONY: purge
purge:
	./target/release/the-youvana-node purge-chain --dev

.PHONY: compile
compile:
	cargo build --release
