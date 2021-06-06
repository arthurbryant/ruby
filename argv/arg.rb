#!/usr/bin/env ruby

require 'optparse'

if ARGV.size == 0
  puts "exit"
  exit
end

params = ARGV.getopts("h:", "u:")
if params.nil? or params.size != 2
  puts "exit"
  exit
end

puts params
