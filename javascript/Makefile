.PHONY: up down ps logs config yarn init server dev install add editor

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
# configuration files
################################

config:
	touch .babelrc webpack.config.js .editorconfig .gitignore README.md
	mkdir src
	touch src/index.js


################################
# javascript - nodejs
################################

# yarn
ARG=
yarn:
	docker run --rm -it \
	-v $(PWD):/usr/src/apps \
	-w /usr/src/apps \
 	$(NODE) \
	yarn $(ARG)

# yarn init
init:
	docker run --rm -it \
	-v $(PWD):/usr/src/apps \
	-w /usr/src/apps \
 	$(NODE) \
	yarn init

# yarn start
server:
	docker run --rm -it \
	-v $(PWD):/usr/src/apps \
	-w /usr/src/apps \
 	$(NODE) \
	yarn start

# yarn dev
dev:
	docker run --rm -it \
	-v $(PWD):/usr/src/apps \
	-w /usr/src/apps \
 	$(NODE) \
	yarn dev

# yarn install
ARG=
install:
	docker run --rm -it \
	-v $(PWD):/usr/src/apps \
	-w /usr/src/apps \
 	$(NODE) \
	yarn install $(ARG)

# yarn add
ARG=
add:
	docker run --rm -it \
	-v $(PWD):/usr/src/apps \
	-w /usr/src/apps \
 	$(NODE) \
	yarn add $(ARG)

# editor config
ARG=
editor:
	docker run --rm -it \
	-v $(PWD):/usr/src/apps \
	-w /usr/src/apps \
 	$(NODE) \
	yarn editorconfig-tools $(ARG)
