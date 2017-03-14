FROM aexea/sonarscanner:latest

MAINTAINER krennic

#install node and tslint
RUN apt-get update && apt-get install -y --no-install-recommends\
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - apt-get install -y nodejs

RUN npm install -g tslint typescript && \
	npm cache clean -f && \
	rm -rf ~/.npm && \
	ln -s /usr/bin/nodejs /usr/bin/node
