#!/usr/bin/ruby

def one(args)
  block_given? ? "block one return #{yield}" : args
end

def two
   "block two return #{yield}" if block_given?
end

result1 = one two { "arthur" }
result2 = one two do
  "arthur"
end

p result1
p result2


def pay_hander(&block)
  yield if block_given?
end

pay_hander do
  p "authorize"
end
