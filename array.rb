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

@temp_arr = [1, 2]
@arr = [12, 'b', @temp_arr]
p @arr
@arr[2] = 100
p @arr.inspect
