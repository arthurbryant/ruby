#!/usr/bin/ruby

module Test
  attr_reader :t
  @t = "test variable"
end

class Debug
  include Test

  def initialize(str)
    @t = str
  end
end

d = Debug.new
puts d.t
