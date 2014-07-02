#!/usr/bin/ruby

array = ["1", "3"]
result = array.inject(nil) do |sum, i|
  p "=====#{sum}"
  sum ? i :  i + " no"
end

p result
