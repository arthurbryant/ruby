#!/bin/env ruby

require 'socket'
require 'pp'

hostname = 'localhost'
port = 2000
# create 10 threads to connect to the server
10.times do
  thread = Thread.new do
    s = TCPSocket.open(hostname, port)
    while line = s.gets
      puts line.chop
    end
    s.close
  end

  thread.join
end

host = 'www.google.com'
port = 80

path = '/index.html'
request = "GET #{path} HTTP/1.0\r\n\r\n"
socket = TCPSocket.open(host, port)
socket.print(request)
response = socket.read
headers, body = response.split("\r\n\r\n", 2)
pp headers
