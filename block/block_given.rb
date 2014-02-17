#!/usr/bin/ruby

def one(args)
  block_given? ? "block one return #{yield}" : args
end

def two
   "block two return #{yield}" if block_given?
end

result1 = one two { "arthur" }
# == (one two) block
result2 = one two do
  "arthur"
end
puts result1
puts result2
