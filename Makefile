.PHONY: all run build push

all: run

run: | node_modules
	./node_modules/kue/bin/kue-dashboard -r $(REDIS_URL) -p 8080

build:
	docker build -t pavlov/kue-dashboard:latest .

push:
	docker push pavlov/kue-dashboard:latest

node_modules:
	npm install kue
