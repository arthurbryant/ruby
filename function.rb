#!/usr/bin/env ruby

def search_engine
  %w[Google Yahoo].map do |engine|
    "http://www." + engine + ".com"
  end
end

def add(x, y)
  s = x + y
end

result = search_engine
puts result

result = add(10, 11)
puts result
