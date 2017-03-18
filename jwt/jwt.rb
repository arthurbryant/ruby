#!/usr/bin/env ruby

require 'jwt'

data = { "name": "BACKYARD BABIES JAPAN TOUR 2016", "location": "恵比寿LIQUIDROOM" }

token = JWT.encode data, nil, "none"

puts token

decoded_data = JWT.decode token, nil, false

puts decoded_data
