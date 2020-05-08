all:
	docker build . -t radegast
	docker run -it --rm radegast bash
