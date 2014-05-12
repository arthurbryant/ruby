#!/usr/bin/ruby

file = File.open('range.rb')
while line = file.gets
  puts line if line =~ /while/ .. line =~ /^$/
end
