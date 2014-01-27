#!/usr/bin/ruby

# = to assign reference
def refer(value)
  @value = value
  puts @value
end

a = lambda { |x|  x += 1; puts x }
b = a
a.call(10)
b.call(0)

# condition
m = "cat" && 99
puts m

puts defined? what
puts defined? $_
puts defined? RUBY_PLATFORM
puts defined? 12.abs

date = %x(date)
puts date
