#!/usr/bin/env ruby

car_type = 'half'

case car_type
  when 'auto'
    puts "auto car"
  when 'manual', 'half'
    puts "manual car"
  else
    puts "wrong type"
end
