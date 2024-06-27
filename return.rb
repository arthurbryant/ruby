#!/usr/bin/env ruby

def return_what(element)
  1 + 1
  return true if element 
end

value_a = return_what(nil)
puts "=========a"
puts value_a == nil
puts value_a
value_b = return_what("hello")
puts "=========b"
puts value_b == nil
puts value_b
