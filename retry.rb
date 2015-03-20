#!/usr/bin/env ruby

params = 0

begin
  if params != 3
    raise StandardError.new('params is zero')
  else
    puts "params is #{params}"
  end
rescue StandardError => e
  puts e.message
  params += 1
  retry
end
