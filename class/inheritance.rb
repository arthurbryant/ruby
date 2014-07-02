#!/usr/bin/ruby

class Parent
  def say
    puts "hello from #{self}"
  end
end

class Child < Parent
end

p = Parent.new
c = Child.new
p.say
c.say
puts Child.superclass
puts Parent.superclass
puts Parent.superclass.superclass
puts Parent.superclass.superclass.superclass

puts c.class < Parent
puts c.class < Child
puts c.class < Object
