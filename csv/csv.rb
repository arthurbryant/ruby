#!/usr/bin/env ruby

require 'csv'

path = "./test-change-line2.txt"

CSV.foreach(path, col_sep: "\t", headers: true) do |row|
  puts 'name---------'
  puts row['name']
  puts "name---------\n"
  puts 'address---------'
  puts row['address']
  puts "address---------\n"
  puts 'radius---------'
  puts row['radius'].chomp
  puts "radius---------\n"
  puts row['skip_uu_estimate']
end
