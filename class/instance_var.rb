class Test
  attr_accessor :instance_var
end

t = Test.new
t.instance_var = 100
p t.instance_var


class TestClassInstanceVariable
  @var = "class intance variable"

  def self.get_var
    puts @var
  end
end

class Bar < TestClassInstanceVariable
  @var = "var variable"
end

TestClassInstanceVariable.get_var
Bar.get_var


