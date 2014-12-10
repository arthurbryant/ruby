#!/usr/bin/ruby

m = [10, 2, 3, 4].select do |v|
  if v % 2 == 1
    v
  end
end
p m
