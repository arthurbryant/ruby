#!/usr/bin/ruby

file = open(ARGV[0])
file.readline
file.each do |line|
  k, v = line.split
  puts k
  puts v
end
