#!/usr/bin/ruby

result = ''
puts ARGV
File.open(ARGV[0], 'r') do |f|
  while line = f.gets
    line = line.chomp
    result += "#{line.chomp }\t#{line.size}\n"
  end
  puts result
end
