#!/usr/bin/ruby

class TestInspect
  def init(*arg)
    @data = *arg
  end

  def inspect
    @data.each do |x|
      puts x.inspect
    end
  end
end

test = TestInspect.new
test.init(1, 2, 3, 'hello')
test.inspect
