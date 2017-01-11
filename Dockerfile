FROM sonarqube:5.6.4

MAINTAINER krennic

#install node and tslint
RUN apt-get update && apt-get install -y --no-install-recommends\
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g tslint && npm cache clean && rm -rf ~/.npm
