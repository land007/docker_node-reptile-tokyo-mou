FROM land007/ubuntu-node:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN rm /node_/node_modules
ADD node/package.json /node_/package.json
RUN cd /node_ && npm install
ADD node/server.js /node_/server.js
ADD node/tokyo-mou.js /node_/tokyo-mou.js
ADD node/unite.js /node_/unite.js
ADD node/converter.js /node_/converter.js
ADD node/persistence.js /node_/persistence.js
ADD node/start.sh /start.sh
RUN chmod +x /start.sh

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
#date 需处理
#加一个自增序号
#日志需处理
#任务需处理

#docker rm -f node-reptile-tokyo-mou ; docker run -it --privileged -v ~/docker/ubuntu-node:/node -p 80:80 --name node-reptile-tokyo-mou land007/node-reptile-tokyo-mou:latest
#docker rm -f node-reptile-tokyo-mou && docker run -it --privileged -v c:/Users/jiayq/docker/node-reptile-tokyo-mou:/node -p 80:80 -e "DbHost=rm-2zew3g96vzbn5648cqo.mysql.rds.aliyuncs.com" -e "DbPort=3306" -e "DbUsername=psc" -e "DbPassword=psc2019%" -e "Database=pscdb" --name node-reptile-tokyo-mou --log-opt max-size=1m --log-opt max-file=1 land007/node-reptile-tokyo-mou:latest
#docker rm -f node-reptile-tokyo-mou && docker run -it --privileged -v c:/Users/jiayq/docker/node-reptile-tokyo-mou:/node -p 80:80 -e "DbHost=172.17.0.1" -e "DbPort=3306" -e "DbUsername=root" -e "DbPassword=1234567" -e "Database=pscdb" --name node-reptile-tokyo-mou --log-opt max-size=1m --log-opt max-file=1 land007/node-reptile-tokyo-mou:latest
#docker rm -f node-reptile-tokyo-mou ; rm -rf ~/docker/node-reptile-tokyo-mou ; docker run -it --privileged -v ~/docker/node-reptile-tokyo-mou:/node -p 1080:80 -e "DbHost=rm-2zew3g96vzbn5648c.mysql.rds.aliyuncs.com" -e "DbPort=3306" -e "DbUsername=psc" -e "DbPassword=psc2019%" -e "Database=pscdb" --name node-reptile-tokyo-mou --log-opt max-size=1m --log-opt max-file=1 land007/node-reptile-tokyo-mou:latest
#docker kill watchtower ; docker rm watchtower ; docker run -d --name watchtower -v /var/run/docker.sock:/var/run/docker.sock -v ~/.docker/config.json:/config.json v2tec/watchtower --interval 30 --label-enable
#docker pull land007/node-reptile-tokyo-mou:latest; rm -rf ~/docker/node-reptile-tokyo-mou; docker rm -f node-reptile-tokyo-mou ; docker run -it --privileged --label=com.centurylinklabs.watchtower.enable=true -v ~/docker/node-reptile-tokyo-mou:/node -p 1080:80 -e "DbHost=rm-2zew3g96vzbn5648c.mysql.rds.aliyuncs.com" -e "DbPort=3306" -e "DbUsername=psc" -e "DbPassword=psc2019%" -e "Database=pscdb" -e "PIPEMAX=5" -e "PAGEMAX=20" --name node-reptile-tokyo-mou --log-opt max-size=1m --log-opt max-file=1 land007/node-reptile-tokyo-mou:latest
