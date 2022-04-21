.ONESHELL:

.PHONY: build watch pdf_server

build:
	docker-compose run create_pdf
watch:
	docker-compose up