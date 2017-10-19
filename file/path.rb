#!/usr/bin/env ruby

File.open('/tmp/test.txt', 'w+') do |f|
  p f
  p f.path
  puts f.to_s
end

f = File.new('/tmp/test.txt')
p f
p f.path
p f.methods
