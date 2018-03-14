FROM node:8
MAINTAINER chenjunhong@useease.com
ENV server /argus-web/server
RUN mkdir -p /argus-web/server
## TODO: copy the code from hard disk temporary , to be change into git clone 
ADD server/  /argus-web/server
WORKDIR $server
RUN  npm install -g pm2 \
      && npm install 
#WORKDIR $phoneapp
## TODO : wait for the app_phone to fix the error for build  
# TOOD write shell script to replace the start_config for express server
EXPOSE 8080
CMD ['npm','run','start']
