.PHONY: build push

build:
	docker build -t pavlov/kue-dashboard .

push:
	docker push pavlov/kue-dashboard
