#!/usr/bin/ruby

@array = "abcd".split('')
puts @array

@temp_arr = [1, 2]
@arr = [12, 'b', @temp_arr]
p @arr
@arr[0, 2] =  [] 
p @arr

@inc = 1
@inc += 1

puts (@inc)
