#!/usr/bin/ruby

class Setter
  attr_accessor :name, :age
  def initialize
    self.name = "arthur"
    self.age = 29
  end
end

setter = Setter.new
puts setter.name
puts setter.age
