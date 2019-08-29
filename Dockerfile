FROM land007/ubuntu-node:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN rm /node_/node_modules
ADD node/package.json /node_/package.json
RUN cd /node_ && npm install
ADD node/server.js /node_/server.js
ADD node/tokyo-mou.js /node_/tokyo-mou.js
ADD node/unite.js /node_/unite.js
ADD node/converter.js /node_/converter.js

ENV PIPEMAX=20\
	PAGEMAX=8\
	SUBTRACTDAYS=1\
	CRON="30 1 1 * * *"\
	DbHost=0.0.0.0\
	DbPort=3306\
	DbUsername=root\
	DbPassword=\
	Database=test


#RUN echo "/check.sh /node" >> /start.sh

#docker stop node-reptile-tokyo-mou ; docker rm node-reptile-tokyo-mou ; docker run -it --privileged -v ~/docker/ubuntu-node:/node -p 80:80 --name node-reptile-tokyo-mou land007/node-reptile-tokyo-mou:latest
#docker stop node-reptile-tokyo-mou && docker rm node-reptile-tokyo-mou && docker run -it --privileged -v c:/Users/jiayq/docker/node-reptile-tokyo-mou:/node -p 80:80 -e "DbHost=" -e "DbPort=0.0.0.0" -e "DbUsername=psc" -e "DbPassword=psc2019%" -e "Database=pscdb" --name node-reptile-tokyo-mou land007/node-reptile-tokyo-mou:latest
