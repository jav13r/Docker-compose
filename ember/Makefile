.PHONY: up down ps logs npm yarn ember init server build generate destroy test install

MAKEPATH := $(abspath $(lastword $(MAKEFILE_LIST)))
PWD := $(dir $(MAKEPATH))

NODE=jav13r/nodejs:8.11.3


################################
# docker compose
################################

up:
		docker-compose up -d

down:
		docker-compose down

ps:
		docker-compose ps

ARG=
logs:
		docker-compose logs $(ARG)


################################
# javascript - nodejs
################################

# npm
ARG=
npm:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	npm $(ARG)

# yarn
ARG=
yarn:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	yarn $(ARG)

# ember
ARG=
ember:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ember $(ARG)

# init
ARG=
init:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ember init $(ARG)

# server
ARG=
server:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ember server $(ARG)

# build
ARG=
build:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ember build $(ARG)

# generate
ARG=
OPT=
generate:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ember generate $(ARG) $(OPT)

# destroy
ARG=
OPT=
destroy:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ember destroy $(ARG) $(OPT)

# test
ARG=
test:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ember test $(ARG)

# addons
ARG=
install:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ember install $(ARG)
