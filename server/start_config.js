let opentsdb_host = "OPENTSDBHOST" // the opentsdb that agent tranfer data to
let opentsdb_port = "OPENTSDBPORT"      // the opentsdb that agent tranfer data to
let argus_collector_api_host = "CMHOST"  // the argus-collecor api in argus-collector
let argus_collector_api_port = "CMPORT"      // the argus-collecor api in argus-collector
let chain_collector_api_host = "CHAINHOST" //the argus-chain api in argus-collector
let chain_collector_api_port = "CHAINPORT"    //the argus-chain api in argus-collector
let mongodb_host = "MONGOHOST"        // the mongodb for saving the user config and usage 
let mongodb_port = "MONGOPORT"                 // the mongodb for saving the user config and usage
let mongodb_password = "MONGOPASSWD"                 // the mongodb for saving the user config and usage
let mongodb_user = "MONGOUSER"
let redis_host = "REDISHOST"               // the redis for alert a
let redis_port = "REDISPORT"                    // 
let redis_password = "REDISPASSWD"                    // 
let redis_db = 0                    // 
let wechat_redis_host = "WECHATREDISHOST"   // the redis connected to wechat service
let wechat_redis_port = "WECHATREDISPORT"            // the redis connected to wechat service
let wechat_redis_db = WECHATREDISDB                   // 
let wechat_redis_password = "WECHATREDISPASSWD" // t
let wechat_api_host = "WECHATAPIHOST"     // the wechat web service ip
//let wechat_qrcode_path = '/argus-internal/controller/create_qrcode?username='
let wechat_qrcode_path = "WECHATQRCODEURL"
let wechat_redis_channel = "WECHATREDISCHAN"
let session_redis_host = "REDISHOST"
let session_redis_port = "REDISPORT"
let session_redis_db = "SESSIONDBNUM"

module.exports = {
    opentsdb_host: opentsdb_host,
    opentsdb_port: opentsdb_port,
    argus_collector_api_host: argus_collector_api_host,
    argus_collector_api_port: argus_collector_api_port,
    chain_collector_api_host: chain_collector_api_host,
    chain_collector_api_port: chain_collector_api_port,
    mongodb_host: mongodb_host,
    mongodb_port: mongodb_port,
    mongodb_password: mongodb_password,
    mongodb_user: mongodb_user,
    redis_host: redis_host,
    redis_port: redis_port,
    redis_db : redis_db,
    redis_password: redis_password,
    wechat_redis_host: wechat_redis_host,
    wechat_redis_port: wechat_redis_port,
    wechat_api_host: wechat_api_host,
    wechat_redis_password: wechat_redis_password,
    wechat_redis_db: wechat_redis_db,
    wechat_qrcode_path: wechat_qrcode_path,
    wechat_redis_channel: wechat_redis_channel,
    session_redis_host: session_redis_host,
    session_redis_port: session_redis_port,
    session_redis_db: session_redis_db
}
