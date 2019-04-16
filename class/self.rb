#!/usr/bin/ruby

class Test
  def self.test
    puts "10"
  end

  def self.test=(x)
    puts "#{x}"
  end

end

Test.test = 1
Test.test
