#!/usr/bin/ruby

# ARGV.each do |argv|
#   puts argv
# end

ARGF.each |file|
  puts file.filename
  puts file
end

# file = open(ARGV[0])
# file.readline
# file.each do |line|
#   k, v = line.split
#   puts k
#   puts v
# end
