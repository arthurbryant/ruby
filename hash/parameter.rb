# coding: utf-8

hash = {:name => "arthur", :age => 28};

def test(args)
  puts args[:name]
  puts args[:age]
end

test(:name => "arthur", :age => 13)
test(hash)
