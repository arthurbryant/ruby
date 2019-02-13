#!/usr/bin/env ruby

class C
  private

  def self.method
    puts 'hi'
  end
end

C.method


class D
  def self.method
    puts 'hi'
  end

  private_class_method :method
end

D.method
