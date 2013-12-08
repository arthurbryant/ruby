#!/usr/bin/ruby

@array = "abcd".split('')
puts @array
@array.each do |item|
  if item == 'c'
    puts item
  else
    warn("why")
  end
end
