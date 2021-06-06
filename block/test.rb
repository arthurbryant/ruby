#!/usr/bin/env ruby

def f(x)
  yield if block_given?
  return x + 1
end

p f(1) { p "test" }
p f(10) { }

def foo
  yield(1, 2)
end

p foo {|a, b| a + b}

def calc(arr)
  idx = 0

  while(idx < arr.size)
    yield arr[idx] if block_given?
    idx += 1
  end
end

sum = 0
calc([1,2,3,4,5]) { |item| sum += item }
p sum
