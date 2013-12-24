Test = Class.new

def Test.has_many(name)
  puts "Rails style has_many"
end

class Test
  has_many "photo"
end
