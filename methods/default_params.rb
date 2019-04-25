#!/usr/bin/env ruby

def test(hash = {'purpose_type' => 'default'})
  puts hash['purpose_type']
end

def test_with_hash(name: 'arthur', age: 30)
  puts name
  puts age
end

def test_with_value(name = 'arthur', age = 30)
  puts name
  puts age
end


test()
test('purpose_type' => 'ok')

test_with_hash
test_with_hash(name: 'bryant')
test_with_hash(name: 'peter', age:45)

puts "==============="

test_with_value
test_with_value('bryant')
test_with_value('peter', 45)
