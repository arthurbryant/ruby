#!/usr/bin/ruby

arr = [1,2,3,4]
result = arr.map.with_index {|e, i| e*i }
p arr
p result

result2 = arr.map
p result2
