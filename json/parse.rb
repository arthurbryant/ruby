#!/usr/bin/ruby

require 'rubygems'
require 'json'

body = { :message => '', :error => nil }
json_text = body.to_json
p json_text
result = JSON.parse(json_text)
p result['message']
p result['error']
p 'ok' if result['message'] == ""
p 'ok' if result['error'] == ""
