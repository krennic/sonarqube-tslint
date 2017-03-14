FROM aexea/sonarscanner:latest

MAINTAINER krennic

#install node and tslint
RUN apt-get update && apt-get install -y --no-install-recommends\
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g tslint typescript && \
	npm cache clean -f && \
	npm install -g n &&\
	n 6.10.0 &&\
	rm -rf ~/.npm && \
	ln -fs /usr/bin/nodejs /usr/bin/node
