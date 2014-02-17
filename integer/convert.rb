#!/usr/bin/ruby

while line = gets
  a, b = line.split(/,/).map { |v| Integer(v) }
  sum = a + b
  puts sum
end

