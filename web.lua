local view_engine = require 'tir/view'
local test_view = view_engine.view('test.html')

local json = require 'cjson'
local result = {
  name = 'foo',
  age = 20
  }

ngx.say(json.encode(result))
