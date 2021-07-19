.ONESHELL:

.PHONY: build watch

build:
	docker-compose run create_pdf
watch:
	docker-compose run watch