#!/usr/bin/ruby

filename = ARGV[0]
if File.exist?(filename) && !File.zero?(filename)
  puts "#{ARGV[0]} exists and is not empty."
end
