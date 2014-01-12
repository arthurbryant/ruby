def test_block
  puts "start"
  yield('name', 'arthur')
  yield('age', 25)
  puts "end"
end

test_block { puts "block"}
puts "-------------------------"
test_block { |key, value| puts "#{key} => #{value}"}
