RUN=docker run -i --memory-swappiness=0  -v `realpath .`:/app -w /app -t node:7

all: init
	$(RUN) node model.js

init:
	$(RUN) npm install

publish:
	$(RUN) /bin/bash -cx "npm adduser && npm publish"
