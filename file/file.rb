#!/usr/bin/ruby

# ARGV.each do |argv|
#   puts argv
# end

ARGF.each do |file|
  puts file
end

file = File.open('data.txt')
while line = file.gets
  puts line
end

file = File.open('data.txt', 'w')
file.write('arthur')
file.close
