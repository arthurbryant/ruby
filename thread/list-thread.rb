#!/usr/bin/env ruby

t1 = Thread.new { sleep 10 }
Thread.list.each { |t| p t }
puts "Current thread = " + Thread.current.to_s
t1.join
Thread.list.each { |t| p t }
