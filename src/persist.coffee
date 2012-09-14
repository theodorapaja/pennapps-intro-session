url = require 'url'

redis_url = url.parse process.env.REDISTOGO_URL ? 'redis://localhost:6300'
redis = (require 'redis').createClient redis_url.port, redis_url.hostname
if redis_url.auth 
    [redis_db, redis_password] = redis_url.auth.split ':'
    redis.auth redis_password

store_help_request = (request) ->
    id = redis.incr 'help_request_count'
    request.id = id
    redis.lpush 'help_requests', (JSON.stringify request)

all_help_requests = (callback) ->
    redis.lrange 'help_requests', 0, -1, (err, requests) ->
        if err?
            callback err
        else
            callback null, (JSON.parse r for r in requests)

module.exports = { store_help_request, all_help_requests }