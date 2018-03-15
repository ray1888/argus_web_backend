FROM node:8
MAINTAINER chenjunhong@useease.com

## The below part is all the env need to config the server ,for the default value 

# ENV server /argus-web/server
# ENV OPENTSDBHOST ""
# ENV OPENTSDBPORT 0
#  Argus Collector Manager settings
# ENV CMHOST ""
# ENV CMPORT 8081
#  Argus tracing related settings
# ENV CHAINHOST "127.0.0.1"
# ENV CHAINPORT 9999
#  MONGODB related settings
# ENV MONGOHOST "127.0.0.1"
# ENV MONGOPORT 27017
# ENV MONGOPASSWD ''
# ENV MONGOUSER   ''
#  REDIS setiings
# ENV REDISHOST  "127.0.0.1"
# ENV REDISPORT  6379
# ENV REDISPASSWD  ''
# ENV SESSIONDB 4 
#  WECHAT RELATED settings   
## if want to use wechat related server ,this should be use with a not private ip address
# ENV WECHATREDISHOST "127.0.0.1"
# ENV WECHATREDISPORT 6379 
# ENV WECHATREDISPASSWD ""
# ENV WECHATREDISCHAN ""
# ENV WECHATQRCODEURL ""
# ENV WECHATREDISDB 2


RUN mkdir -p /argus-web/server

## TODO: copy the code from hard disk temporary , to be change into git clone 
ADD server/  /argus-web/server
WORKDIR $server
RUN  npm install -g pm2 \
      && npm install
RUN cat start_config.js 
EXPOSE 8080
# CMD ['npm','run','start']
ENTRYPOINT [ "entrypoint.sh" ]