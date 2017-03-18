#!/usr/bin/env ruby

def yield_test(*args)
  p *args.inspect
  tmp = yield
  puts "tmp = #{tmp}"
end

yield_test(1, 2) { puts "helo, yield"; 0 }; puts


def callback()
  p 'start callback'
  yield
  p 'end callback'
end

callback {p 'callback block'};  puts

def show
  p 'callback method'
end

callback {show }; puts

def square(x)
  x * x
end

def result
  (90..100).each do |i|
    p yield i
  end
end

result {|i| square i; }; puts

def yield_data(data)
  yield data
end

(1..10).each do |i|
  yield_data(i) do
    p i
  end
end
