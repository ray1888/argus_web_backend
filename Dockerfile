FROM node:8
MAINTAINER chenjunhong@useease.com

## The below part is all the env need to config the server ,for the default value 

ENV server /argus-web/server
ENV OPENTSDBHOST "192.168.0.253"
ENV OPENTSDBPORT 4242
#  Argus Collector Manager settings
ENV CMHOST "192.168.0.253"
ENV CMPORT 8081
#  Argus tracing related settings
ENV CHAINHOST "192.168.0.253"
ENV CHAINPORT 9999
#  MONGODB related settings
ENV MONGOHOST "192.168.0.253"
ENV MONGOPORT 27017
ENV MONGOPASSWD ''
ENV MONGOUSER   ''
#  REDIS setiings
ENV REDISHOST  "192.168.0.253"
ENV REDISPORT  6379
ENV REDISPASSWD  ''
ENV SESSIONDB 4 
#  WECHAT RELATED settings   
## if want to use wechat related server ,this should be use with a not private ip address
ENV WECHATREDISHOST "192.168.0.253"
ENV WECHATREDISPORT 6379 
ENV WECHATREDISPASSWD ""
ENV WECHATREDISCHAN ""
ENV WECHATQRCODEURL ""


RUN mkdir -p /argus-web/server

## TODO: copy the code from hard disk temporary , to be change into git clone 
ADD server/  /argus-web/server
WORKDIR $server
RUN  npm install -g pm2 \
      && npm install
RUN cat start_config.js 
#WORKDIR $phoneapp
## TODO : wait for the app_phone to fix the error for build  
# TOOD write shell script to replace the start_config for express server
EXPOSE 8080
CMD ['npm','run','start']
