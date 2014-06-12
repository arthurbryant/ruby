class Test < StandardError 
end

t = Test.new('error message')
puts t.message
