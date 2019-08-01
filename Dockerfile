FROM land007/ubuntu-node:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

ADD node/server.js /node_/server.js
ADD node/tokyo-mou.js /node_/tokyo-mou.js
ADD node/package.json /node_/package.json
RUN cd /node_ && npm install

#RUN echo "/check.sh /node" >> /start.sh

#docker stop node-reptile-tokyo-mou ; docker rm node-reptile-tokyo-mou ; docker run -it --privileged -v ~/docker/ubuntu-node:/node -p 80:80 --name node-reptile-tokyo-mou land007/node-reptile-tokyo-mou:latest
#docker stop node-reptile-tokyo-mou ; docker rm node-reptile-tokyo-mou ; docker run -it --privileged -v c:/Users/jiayq/docker/node-reptile-tokyo-mou:/node -p 80:80 --name node-reptile-tokyo-mou land007/node-reptile-tokyo-mou:latest
