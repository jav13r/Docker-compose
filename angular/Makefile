.PHONY: up down ps logs npm yarn ng serve generate lint test e2e build doc i18n

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

# Angular
ARG=
ng:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ng $(ARG)

# serve
serve:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ng serve

# generate
ARG=
generate:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ng generate $(ARG)

# lint
ARG=
lint:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ng lint $(ARG)

# test
ARG=
test:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ng test $(ARG)

# e2e
ARG=
e2e:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ng e2e $(ARG)

# build
ARG=
build:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ng build $(ARG)

# documentation
ARG=
doc:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ng doc $(ARG)

# tranlation
ARG=
i18n:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ng xi18n $(ARG)
