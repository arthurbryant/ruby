#!/usr/bin/ruby

puts "parent start, term = #{ENV['TERM']}"
fork do
  puts "child 1 start, term = #{ENV['TERM']}"
  ENV['TERM'] = "mixi"
  fork do
    puts "child 2 start, term = #{ENV['TERM']}"
  end
  Process.wait
  puts "child 1 end, term = #{ENV['TERM']}"
end
Process.wait
puts "parent end, term = #{ENV['TERM']}"
