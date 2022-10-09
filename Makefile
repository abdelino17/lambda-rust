VERSION ?= 0.5.0
RUST_VERSION ?= 1.64.0
REPO ?= abdelino/lambda-rust
TAG ?= "$(REPO):$(VERSION)-rust-$(RUST_VERSION)"

build-push:
	@docker build --push --platform linux/amd64,linux/arm64 --build-arg RUST_VERSION=$(RUST_VERSION) -t $(TAG) -t $(REPO):latest .
