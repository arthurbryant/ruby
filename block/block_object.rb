#!/usr/bin/ruby

def create_block_object(&block)
  block
end

b = create_block_object { |f| puts "block: #{f}" }
b.call('arthur')
b.call(200)

# lambda
b_lambda = lambda { |x, y| puts x + y }
b_lambda.call(12, 20)

inc = lambda { |x| x + 1 }
puts inc.call(20)
puts inc.call(28.323)

# closures
def n_times(t)
  lambda { |n| n*t }
end

closure = n_times(3)
puts closure.call(3)
puts closure.call('hello, world, ')

func = -> arg { puts arg }
func.call('really?')

def my_if(conditon, then_block, else_block)
  if conditon
    then_block.call
  else
    else_block.call
  end
end

10.times do |val|
  my_if val < 5,
    -> { puts "#{val} < 5" },
    -> { puts "#{val} >= 5" }
end

proc1 = lambda do |a, *b, &block|
  puts a.inspect
  puts b.inspect
  block.call
end

proc1.call(1, 2, 3, 4) {puts "block call"}
