#!/usr/bin/ruby

array = [ 1, -1, 2, -2, 3, -3 ]
array.each do |a|
  p a if a.positive?
end
