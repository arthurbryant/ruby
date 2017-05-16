#!/usr/bin/env ruby
File.open("la_id_and_created_at.data").readlines.each do |line|
  line = line.chomp
  la_id, created_at = line.split('    ')
  puts "update places set created_at = '#{created_at}' where la_id = #{la_id};"
end
