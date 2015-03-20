#!/usr/bin/env ruby

def return_value
  result = 2
  if false
    1
  end
end

result = return_value
if result.nil?
  puts "return nil"
end
