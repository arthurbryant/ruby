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
