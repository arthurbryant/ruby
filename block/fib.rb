#!/usr/bin/ruby

def fib(max)
  i1, i2 = 1, 1
  while i1 < max do
    yield i1
    i1, i2 = i2, i1+i2
  end
end

fib(10) { |f| print f, " "}
puts "\n\n"

# find example
content = "inject works like this: the first time the associated block is called, sum is set to inject’s parameter, and element is set to the first element in the collection. The second and subsequent times the block is called, sum is set to the value returned by the block on the previous call. The final value of inject is the value returned by the block the last time it was called. One more thing: if inject is called with no parameter, it uses the first element of the collection as the initial value and starts the iteration with the second value. This means that we could have written the previous examples like this:"
str_array = content.split()
result = str_array.find { |str|  str == 'element' }
p result
puts  "\n"

# collection example
arr = [1, 2, 3, 4]
new_arr = arr.collect { |x| x.succ }
p arr
p new_arr

# loop example
int_enum = [1, 2, 3].to_enum
alpha_enum = ('a'..'z').to_enum
loop do
  puts "#{int_enum.next} - #{alpha_enum.next}"
end

result = []
enum_in_four = (1..10).enum_for(:each_slice, 4)
p enum_in_four.to_a
