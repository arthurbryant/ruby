#!/usr/bin/ruby

arr = [1, 2, 3]

puts arr.map { |x| x+1 }

# == (puts arr.map) do..end
puts arr.map do |x|
  x+1
end
