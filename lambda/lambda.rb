#!/usr/bin/env ruby

# return to the call method
def test_lambda
  lambda { return "Exit from lambda." }.call
  return "Exit from lambda method"
end

puts test_lambda

# return and exit the call method
def test_proc
  Proc.new { return "Exit from proc." }.call
  puts "Exit from proc method"
end

puts test_proc

lambda1 = ->(a, b) {a + b}
puts lambda1.call(1, 4)

proc = proc {|a, b| a*b}
puts proc.call(2, 5)
