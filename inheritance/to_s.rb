#!/usr/bin/env ruby

class TestToString
  
end

t = TestToString.new
p t.to_s

class Child < TestToString
end

p TestToString.superclass

c = Child.new
c.to_s

p Child.superclass
