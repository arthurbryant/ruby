#!/usr/bin/env ruby

File.open('data') do |f|
  num = 0
  f.each_line do |l|
    num = num + l.to_i
  end
  puts num
end

