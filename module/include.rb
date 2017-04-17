#!/usr/bin/env ruby

module M
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
  def initialize
    super
    puts "start to initialize"
    @@dynamo_db = 'first'
  end
    def dynamo
      if @@dynamo_db.nil?
        @@dynamo_db= 'dynamo'
      else
        puts @@dynamo_db
      end
    end
  end

  extend ClassMethods
end

class Foo
  include M
  def print
    Foo::dynamo
  end
end

f = Foo.new
f.print
