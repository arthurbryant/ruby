#!/usr/bin/env ruby

# return to the call method
def test_lambda
  lambda { p "Exit from lambda." and return }.call()
  p "Exit from lambda method" and return
end

test_lambda

# return and exit the call method
def test_proc
  Proc.new { p "Exit from proc." and return }.call
  p "Exit from proc method" and return
end

test_proc

lambda1 = ->(a, b) {a + b}
# error
# lambda1 = ->(a, b, c) {a + b}
p lambda1.call(1, 4)

proc = Proc.new {|a, b, c| p a*b; }
proc.call(2, 5)
