USER_UID = $(shell id -u)
DOCKER = docker-compose -f ./docker-compose.yml -p poc-prisma

.PHONY: start
start: erase build up

.PHONY: stop
stop:
	$(DOCKER) stop

.PHONY: erase
erase:
	$(DOCKER) stop
	$(DOCKER) rm -v -f

.PHONY: build
build:
	$(DOCKER) build

.PHONY: up
up:
	$(DOCKER) up -d

.PHONY: test
test:
	echo $(USER_UID)

.PHONY: bash
bash:
	$(DOCKER) run --user $(USER_UID) --rm node bash
