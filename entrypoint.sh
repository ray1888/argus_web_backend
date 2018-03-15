#!/bin/bash

##TODO to replace the config variable to other 
setting="$@"

# TO generate the default value 
if [[ ! -n $OPENTSDBHOST ]]; then
	export OPENTSDBHOST="127.0.0.1"
fi


if [[ ! -n $OPENTSDBPORT ]]; then
	export OPENTSDBPORT=4242
fi

if [[ ! -n $CMHOST ]]; then
	export CMHOST="127.0.0.1"
fi

if [[ ! -n $CMPORT ]]; then
	export CMPORT=8001
fi

if [[ ! -n $CHAINHOST ]]; then
    
	export CHAINHOST='127.0.0.1'
fi

if [[ ! -n $CHAINPORT ]]; then
    
	export CHAINPORT=9999
fi

if [[ ! -n $MONGOHOST ]]; then
    
	export MONGOHOST='127.0.0.1'
fi

if [[ ! -n $MONGOPORT ]]; then
    
	export MONGOPORT=27017
fi

if [[ ! -n $MONGOPASSWD ]]; then
    
	export MONGOPASSWD=""
fi

if [[ ! -n $MONGOUSER ]]; then
    
	export MONGOUSER=""
fi

if [[ ! -n $REDISHOST ]]; then
    
	export REDISHOST='127.0.0.1'
fi

if [[ ! -n $REDISPORT ]]; then
    
	export REDISPORT=6379
fi

if [[ ! -n $REDISPASSWD ]]; then
    
	export REDISPASSWD=''
fi

if [[ ! -n $SESSIONDB ]]; then
    
	export SESSIONDB=4
fi

if [[ ! -n $WECHATREDISHOST ]]; then
    
	export WECHATREDISHOST='127.0.0.1'
fi

if [[ ! -n $WECHATREDISPORT ]]; then
    
	export WECHATREDISPORT=6379
fi

if [[ ! -n $WECHATREDISPASSWD ]]; then
    
	export WECHATREDISPASSWD=''
fi

if [[ ! -n $WECHATREDISCHAN ]]; then
    
	export WECHATREDISCHAN=''
fi

if [[ ! -n $WECHATQRCODEURL ]]; then
    
	export WECHATQRCODEURL=''
fi

if [[ ! -n $WECHATREDISDB ]]; then
    
	export WECHATREDISDB=2
fi

if [[ ! -n $WECHATAPIHOST ]]; then
    
	export WECHATAPIHOST='127.0.0.1'
fi

#### To Replace  the config value of start_config.js
cd /argus-web/server

sed -e "s#OPENTSDBHOST#${OPENTSDBHOST}#" \
    -e "s#OPENTSDBPORT#${OPENTSDBPORT}#" \
    -e "s#CMHOST#${CMHOST}#" \
    -e "s#CMPORT#${CMPORT}#" \
    -e "s#CHAINHOST#${CHAINHOST}#" \
    -e "s#CHAINPORT#${CHAINPORT}#" \
    -e "s#MONGOHOST#${MONGOHOST}#" \
    -e "s#MONGOPORT#${MONGOPORT}#" \
    -e "s#MONGOPASSWD#${MONGOPASSWD}#" \
    -e "s#MONGOUSER#${MONGOUSER}#" \
    -e "s#REDISHOST#${REDISHOST}#g" \
    -e "s#REDISPORT#${REDISPORT}#g" \
    -e "s#REDISPASSWD#${REDISPASSWD}#" \
    -e "s#WECHATREDISHOST#${WECHATREDISHOST}#" \
    -e "s#WECHATREDISPORT#${WECHATREDISPORT}#" \
    -e "s#WECHATREDISDB#${WECHATREDISPASSWD}#" \
    -e "s#WECHATREDISPASSWD#${WECHATREDISPASSWD}#" \
    -e "s#WECHATAPIHOST#${WECHATAPIHOST}#" \
    -e "s#WECHATQRCODEURL#${WECHATQRCODEURL}#" \
    -e "s#WECHATREDISCHAN#${WECHATREDISCHAN}#" \
    -e "s#SESSIONDBNUM#${SESSIONDB}#" \
     start_config.js > start_config2.js

mv start_config2.js start_config.js 

## hold the node server for long loop without pm2 holding 
node ./bin/www.js