#!/usr/bin/ruby

class Test
  def self.test
    puts "test"
    test2
  end

  private

  def self.test2
    puts "test2"
  end
end

Test.test
