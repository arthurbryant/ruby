class Test < StandardError
end

t = Test.new('error message')
puts t.message

def test
  puts "begin"
  raise
rescue StandardError => e
  puts e.class
end

test
