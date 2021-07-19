# Dockerfile for https://github.com/andygrunwald/FOM-LaTeX-Template
#
# Example usage:
#   docker run -it --rm -v ${PWD}:/data andygrunwald/fom-latex-template
# 	or use 
#	docker-compose up

FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
	&& apt-get install -y \
		inotify-tools \
		wget \
		texlive-latex-recommended \
		texlive-latex-extra \
		texlive-fonts-recommended \
		texlive-bibtex-extra \
		texlive-lang-german \
		texlive-plain-generic \
		texlive-luatex \
		biber \
		xz-utils \
		python \
		python-pygments \
		--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*
# This can get removed at some point due to docker-compose
VOLUME ["/data"]

WORKDIR /data
COPY ./scripts/* /

CMD lualatex --version && biber --version
