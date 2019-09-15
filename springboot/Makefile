.PHONY: up down ps npm gradle build tasks java

MAKEPATH := $(abspath $(lastword $(MAKEFILE_LIST)))
PWD := $(dir $(MAKEPATH))

JAVA=jav13r/java:8.0


################################
# docker compose
################################

up:
		docker-compose up

down:
		docker-compose down

ps:
		docker-compose ps

ARG=
logs:
		docker-compose logs $(ARG)


################################
# docker compose
################################

ARG=
gradle:
		docker run --rm -it \
		-v $(PWD):/usr/src/demo \
		-w /usr/src/demo \
		$(JAVA) \
		gradle $(ARG)

build:
		docker run --rm -it \
		-v $(PWD):/usr/src/demo \
		-w /usr/src/demo \
		$(JAVA) \
		gradle bootRepackage

tasks:
		docker run --rm -it \
    -v $(PWD):/usr/src/demo \
    -w /usr/src/demo \
    $(JAVA) \
    gradle tasks

ARG=
java:
		docker run --rm -it \
    -v $(PWD):/usr/src/demo \
    -w /usr/src/demo \
    $(JAVA) \
    java $(ARG)
