#!/usr/bin/ruby

result = 
  if true
    100
  end
puts result

result = 
  if false 
    200
  end
if result.nil?
  puts "wrong:
else
  puts "ok"
end

