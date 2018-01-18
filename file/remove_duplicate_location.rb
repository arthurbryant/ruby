#!/usr/bin/env ruby
File.open('./data.txt') do |f|
  while line = f.gets do
    puts "DELETE FROM locations where id = #{line.chomp};"
  end
end
