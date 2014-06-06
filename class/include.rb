#!/usr/bin/ruby

module Debug
  def print
    puts "#{self.class.name} #{self.object_id} #{self.name}"
  end
end

class Dev
  include Debug

  attr_reader :name
  def initialize(name)
    @name = name
    print
  end

  def print
    puts "new Dev print"
  end
end

class Product
  include Debug

  attr_reader :name
  def initialize(name)
    @name = name
  end
end

dev = Dev.new("dev")
product = Product.new("product")
dev.print
product.print

module A
  CONST = "A"
end

class A::C
  def self.print
    puts "A::C"
  end
end

p A::CONST
A::C.print
