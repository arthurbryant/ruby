#!/usr/bin/ruby

ARGV.each do |argv|
  puts argv
end

ARGF.each do |f|
  puts f.filename
  puts f
end
