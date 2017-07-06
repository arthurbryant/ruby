#!/usr/bin/env ruby

choice = 4
case choice
when 1
  puts "top"
when 2, 3, 4
  puts "middle"
when 5
  puts "down"
else
  puts "nothing"
end
