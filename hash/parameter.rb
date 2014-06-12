# coding: utf-8

hash = {:name => "arthur", :age => 28};

def test(args)
  puts args[:name]
  puts args[:age]
end

test(:name => "arthur", :age => 13)
test(hash)

def test_parameter(msg)
  p msg['args'][0]
  p msg['args'][1]
end

msg = {"args" => [1, 2]}
test_parameter(msg)


