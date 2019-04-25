#!/usr/bin/env ruby

require 'httpclient'

client = HTTPClient.new
client.debug_dev = $stderr    # デバッグ情報を標準エラー出力に

query = {'q' => 'google 倒産', 'hl' => 'ja'}
# get
res = client.get('https://google.co.jp', :query => query, :follow_redirect => true)
# post
#res = client.post('http://httpbin.org/post', :body => query)

puts "code=#{res.code}"    # res.code : Fixnum
puts HTTP::Status.successful?(res.code)
p res.headers
puts res.body
