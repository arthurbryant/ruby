#!/usr/bin/env ruby

require 'faker'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter  => "mysql2",
  :host     => "staging-5-16.c2aqn1wsobic.ap-northeast-1.rds.amazonaws.com",
  :username => "f0ryou",
  :password => "foryou123",
  :database => "server_production"
)

class User < ActiveRecord::Base
end

puts "User number: #{User.all.size}"
puts "Hello '#{Faker::Name.name}' from Ruby!"
