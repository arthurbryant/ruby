#!/usr/bin/env ruby

require 'yaml'

class User
  attr_accessor :name, :email

  def initialize(attrs = {})
    @name = attrs[:name]
    @email = attrs[:email]
  end
end

user = User.new({:name => "arthur", :email => ["example@gmail.com", "example@foru.club"]})
puts YAML::dump user; puts

class << user
  def to_yaml_properties
    ['@email']
  end
end

guest = User.new({:name => "guest", :email => ["guest@gmail.com", "guest@foru.club"]})

puts YAML::dump user; puts
puts YAML::dump guest

str = 'String'
class << str
  def dup
    puts '------------ do not need to dup here'
  end
end

result = str.dup
puts result

class MetaClass
  class << self
    def test()
      puts "just test meta class"
    end
  end
end

meta_class = MetaClass.new()
MetaClass::test()
