class Test
  attr_accessor :instance_var
end

t = Test.new
t.instance_var = 100
p t.instance_var
