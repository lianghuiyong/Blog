--
-- Created by IntelliJ IDEA.
-- User: huiyong
-- Date: 2017/11/7
-- Time: 下午11:49
-- To change this template use File | Settings | File Templates.
--
local JSON = require("cjson")
local Redis = require("resty.redis")

function hello(req, resp, name)
    logger:i("hello request started!")
    if req.method=='GET' then
        -- resp:writeln('Host: ' .. req.host)
        -- resp:writeln('Hello, ' .. ngx.unescape_uri(name))
        -- resp:writeln('name, ' .. req.uri_args['name'])
        resp.headers['Content-Type'] = 'application/json'
        resp:writeln(JSON.encode(req.uri_args))

        resp:writeln({{'a','c',{'d','e', {'f'}}},'b'})
    elseif req.method=='POST' then
        -- resp:writeln('POST to Host: ' .. req.host)
        req:read_body()
        resp.headers['Content-Type'] = 'application/json'
        resp:writeln(JSON.encode(req.post_args))
    end
    logger:i("hello request completed!")
end

