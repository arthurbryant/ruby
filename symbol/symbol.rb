#!/usr/bin/ruby


if :"+google" == "+google"
  puts "symbol equals string"
end
puts :"+google".class
puts "+google".class
puts "+google".intern.class
puts "not enought" << " yet"


puts "+google".object_id
puts "+google".object_id
puts "+google".object_id
puts "+google".object_id

puts :"+google".object_id
puts :"+google".object_id
puts :"+google".object_id
puts :"+google".object_id

def test(name:, age:)
  puts "name: #{name}, age: #{age}"
end

test(name: 'Arthur', age: 32)
