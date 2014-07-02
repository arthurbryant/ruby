def test_block
  yield('name', 'arthur')
  yield('age', 25)
  yield data
end

test_block { puts "block" }
puts "-------------------------"
test_block { |key, value| puts "#{key} => #{value}"}

def yield_data(data)
  yield data
end

result = [1,2,3,4].each do |data|
  data
end
p result
