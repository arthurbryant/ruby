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

#TestM.print
# The method from include will be called before parent class
user = User.new
user.eat
