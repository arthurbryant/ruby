#!/usr/bin/ruby

class Test
  def self.print
    puts "call print"
  end

  def self.test
    print
  end
end

Test.test
