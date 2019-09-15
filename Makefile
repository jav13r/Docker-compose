.PHONY: composer laravel npm yarn angular ionic react react-native vue2 vue3 vue-ui ember cordova adonis sails

MAKEPATH := $(abspath $(lastword $(MAKEFILE_LIST)))
PWD := $(dir $(MAKEPATH))

CLI=jav13r/php:7.2.4-cli
FPM=jav13r/php:7.0.30-fpm
COMPOSER=composer:latest
NODE=jav13r/nodejs:8.11.3
SAILS=jav13r/sailsjs:latest
ADONIS=jav13r/adonisjs:latest

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

# ionic
ARG=
TMP=
ionic:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	ionic start $(ARG) $(TMP)

# react
ARG=
react:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	create-react-app $(ARG)

# react native
ARG=
react-native:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	create-react-native-app $(ARG)

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

# cordova
ARG=
cordova:
	docker run --rm -it \
	-v $(PWD):/usr/share/app \
	-w /usr/share/app \
	$(NODE) \
	cordova create $(ARG)

# adonis
ARG=
adonis:
	docker run --rm -it \
	-v $(PWD):/usr/src/app \
	-w /usr/src/app \
	$(ADONIS) \
	adonis new $(ARG)

# sails
ARG=
sails:
	docker run --rm -it \
	-v $(PWD):/usr/src/app \
	-w /usr/src/app \
	$(SAILS) \
	sails new $(ARG)
