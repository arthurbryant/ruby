#!/usr/bin/ruby

result = ''
seperator = '|'
puts ARGV
File.open(ARGV[0], 'r') do |f|
  while line = f.gets
    result += line.chomp + seperator
    puts line
  end
  result = result.chomp(seperator)
  puts result
end
