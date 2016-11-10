#!/usr/bin/env ruby

class Singleton
  attr_accessor :name

  def Singleton.instance
    self
  end

  private
    def initialize
      @name = "singleton"
    end

    def new
    end
end

singleton = Singleton::instance
puts singleton.class
puts singleton.object_id
singleton_dup = Singleton.instance
puts singleton_dup.class
puts singleton_dup.object_id
singleton_obj = Singleton.new
puts singleton_obj.class
puts singleton_obj.class.class

ObjectSpace.each_object(Singleton) {}
