#!/usr/bin/ruby

module Test
  NAME = "INSTANCE NAME"
  attr_reader :t
  @t = "test variable"
end

class Debug
  include Test

  def initialize(str)
    @t = str
  end
end

d = Debug.new("variable")
puts d.t

p Test::NAME
