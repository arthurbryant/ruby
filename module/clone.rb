#!/usr/bin/ruby -w

require 'pp'

class Test
  def hello
    puts self.inspect
  end
end

obj = Test.new
obj2 = obj.dup
obj3 = obj.clone
obj.hello
obj2.hello
obj3.hello
