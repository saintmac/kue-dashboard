.PHONY: all run build push

all: run

run: | node_modules
	./node_modules/kue/bin/kue-dashboard -r $(REDIS_URL) -p 3002

build:
	docker build -t pavlov/kue-dashboard .

push:
	docker push pavlov/kue-dashboard

node_modules:
	npm install kue
