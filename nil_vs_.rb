#!/usr/bin/ruby

test_arr = [nil, false, true, "", " ", [], [nil], {}, {temp: nil}, 0, 5]
test_arr.each do |t|
  print "__  " if !t.nil?
  print ".." if t
  puts
end
