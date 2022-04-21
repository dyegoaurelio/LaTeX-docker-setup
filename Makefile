.ONESHELL:

.PHONY: build watch pdf_server

build:
	docker-compose run create_pdf
watch:
	docker-compose run watch

pdf_server:
	docker-compose run pdf_server