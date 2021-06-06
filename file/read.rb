#!/usr/bin/ruby

File.open('./argv.rb', 'a') do |f|
  f.puts Time.now
end

File.open('./argv.rb') do |f|
  f.each_line do |line|
    puts "#{f.lineno}: #{line}"
  end
end

puts "--------------"

File.open('./data', 'w+') do |f|
  f.puts Time.now
  puts f.pos
  f.pos = 0
  f.puts Time.now

  f.pos = 0
  puts f.getc
  puts f.gets
  puts f.pos
end

