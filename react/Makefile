.PHONY: up down ps logs npm yarn react server build

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

# react
ARG=
react:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	react $(ARG)

# server
server:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	yarn start

# build
build:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	yarn build
