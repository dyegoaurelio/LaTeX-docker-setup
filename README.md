# LaTeX docker setup

This is a simple docker boilerplate for easily creating LaTeX documents with no compatity issues


## installation

assuming you already have [docker-compose](https://docs.docker.com/compose/install/) installed

1. download this repository

```bash
git clone https://github.com/dyegoaurelio/LaTeX-docker-setup
```

2. go to the project folder

```bash
cd LaTeX-docker-setup
```

3. start process

````bash
docker-compose run watch
````

or

````bash
make watch
````

note that the first time that you run, it will take a lot of time building the Docker Image, but it wont wappen again

## features

- the `watch` command will re-build the document on every change on the folder
- the `create_pdf` command will build the document once
