busted = require 'busted'
local options = {
  path = './',
  lang = 'en',
  pattern = busted.defaultpattern,
  defer_print = true,
  sound = false,
  cwd = './',
  output = 'spec/html_output.lua',
  success_messages = busted.success_messages or nil,
  failure_messages = busted.failure_messages or nil,
  filelist = nil,
  root_file = "spec",
  excluded_tags = {},
  tags = {},
}

local status_string, failures = busted(options)

if failures then
  ngx.status = 412
end
ngx.say(status_string)
