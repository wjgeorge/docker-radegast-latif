all: build run

build:
	docker build . -t wjgeorge/radegast-latif

run:
	docker run -it --rm wjgeorge/radegast-latif bash
