#!/usr/bin/env ruby

class TestData
  attr_accessor :data

  def initialize(d)
    @data = d
  end
end

def loop_return_val
  for i in 1..20 do
    puts i
    TestData.new(i)
  end
end

result = loop_return_val
puts "\nReturn value of loop is: class: #{result.class}, value: #{result}"
