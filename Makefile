.PHONY: composer laravel npm yarn angular react vue2 vue3 vue-ui ember

MAKEPATH := $(abspath $(lastword $(MAKEFILE_LIST)))
PWD := $(dir $(MAKEPATH))

CLI=jav13r/php:7.2.4-cli
FPM=jav13r/php:7.0.30-fpm
COMPOSER=composer:latest
NODE=jav13r/nodejs:8.11.3

################################
# php
################################

# Composer
ARG=
composer:
	docker run --rm -it \
	-v $(PWD):/var/www/html \
	-w /var/www/html \
	$(COMPOSER) \
	composer $(ARG)

# Laravel
ARG=
V=
laravel:
	docker run --rm -it \
	-v $(PWD):/var/www/html \
	-w /var/www/html \
	$(COMPOSER) \
	composer create-project laravel/laravel $(ARG) $(V)


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

# angular
ARG=
angular:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ng new $(ARG)

# react
ARG=
react:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	create-react-app $(ARG)

# vue 2
ARG=
TMP=
vue2:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	vue init $(TMP) $(ARG)

# vue 3
ARG=
TMP=
vue3:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	vue create $(ARG)

# vue 3
vue-ui:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	vue ui

# ember
ARG=
ember:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ember new $(ARG)
