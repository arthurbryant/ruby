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

def make_alert(message = "", options = {})
  puts message
  options.each do |k, v|
    print k, " => ", v
    puts
  end
end

make_alert('User not exist', "errors" => ['User not exist'])
