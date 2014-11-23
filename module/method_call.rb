#!/usr/bin/ruby

module TestM
  def print
      p "module TestM"
  end

  def eat
    p "TestM eat"
  end
end

class Person
  def eat
    p "Person eat"
  end
end

class User < Person
  include TestM
end

# The method from include will be called before parent class
user = User.new
user.eat

module TestModule
  def sin
    puts "call method sin of TestModule"
  end
end

include TestModule

module TestModuleFunction
  def sin
    puts "call method sin of TestModuleFunction"
  end
  module_function :sin
end

TestModuleFunction.sin
include TestModuleFunction
