#!/usr/bin/ruby

ele = 0..."cat".length
puts ele.inspect
puts ele.class
arr = ele.to_a
puts arr.inspect
enum = ele.to_enum
puts enum.inspect
ele.each do |x|
  puts x
end
