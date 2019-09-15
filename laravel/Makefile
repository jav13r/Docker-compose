.PHONY: up down ps logs composer composer-a composer-i composer-u artisan clear artisan-d artisan-da artisan-up key event migrate migration factory seeder seed auth policy request model resource middleware controller dusk dck-dusk php-unit npm yarn pg pg-u pg-d

MAKEPATH := $(abspath $(lastword $(MAKEFILE_LIST)))
PWD := $(dir $(MAKEPATH))

CLI=jav13r/php:7.2.4-cli
FPM=jav13r/php:7.0.30-fpm
COMPOSER=composer:latest
NODE=jav13r/nodejs:8.11.3
PG=postgres:9.6.2

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
# composer
################################

# composer
ARG=
composer:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(COMPOSER) \
		composer $(ARG)

# composer dumpautoload
composer-a:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(COMPOSER) \
		composer dumpautoload

# composer ignore
ARG=
composer-i:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(COMPOSER) \
		composer --ignore-platform-reqs --no-scripts $(ARG)

# composer update
ARG=
composer-u:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(COMPOSER) \
		composer --ignore-platform-reqs --no-scripts update


################################
# laravel
################################

# artisan
ARG=
artisan:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan $(ARG)


# route, config cache
clear:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan route:cache && php artisan config:cache


# maintenance mode
ARG=
TIME=""
artisan-d:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan down --message=$(ARG) --retry=$(TIME)

# maintenance mode allow ip
ARG=
artisan-da:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan down --allow=127.0.0.1 --allow=$(ARG)

# maintenance mode disable
artisan-up:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan up

# key generate
key:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan key:generate

# event
event:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan event:generate

# migrate
ARG=
migrate:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan migrate$(ARG)

# migration
ARG=
CREATE=
TABLE=
migration:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan make:migration $(ARG) --create=$(CREATE) --table=$(TABLE)

# factory
ARG=
MODEL=
factory:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan make:factory $(ARG) --model=$(MODEL)

# seeder
ARG=
seeder:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan make:seeder $(ARG)

# seed
ARG=
seed:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan db:seed --class=$(ARG)

# make auth
auth:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan make:auth

# policy
ARG=
MODEL=
policy:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan make:policy $(ARG) --model=$(MODEL)

# request validator
ARG=
request:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan make:request $(ARG)

# make model
ARG=
model:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan make:model $(ARG)

# resource
ARG=
resource:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan make:resource $(ARG)

# resource
ARG=
test:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan make:test $(ARG)

# make middleware
ARG=
middleware:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan make:middleware $(ARG)

# make controller
ARG=
MODEL=
controller:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan make:controller $(ARG) --resource --model=$(MODEL)

# laravel dusk
ARG=
dusk:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		php artisan dusk$(ARG)

# laravel dusk
ARG=
dck-dusk:
		docker exec -it $(ARG) php artisan dusk


################################
# php unit
################################

ARG=
php-unit:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(FPM) \
		vendor/bin/phpunit $(ARG)


################################
# nodejs
################################

ARG=
npm:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(NODE) \
		npm $(ARG)

ARG=
yarn:
		docker run --rm -it \
		-v $(PWD):/usr/share/nginx/html \
		-w /usr/share/nginx/html \
		$(NODE) \
		yarn $(ARG)


################################
# postgresql
################################

ARG=
pg:
		docker run -d \
    -e POSTGRES_DB=$(ARG) \
    -v $(PWD)/docker-config/postgres:/var/lib/postgres/data  \
    --name postgres $(PG)

pg-u:
		docker start postgres

pg-d:
		docker stop postgres
