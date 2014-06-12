#!/usr/bin/ruby

a = [ "d", "a", "e", "c", "b" ]
b = a.sort { |a, b| b <=> a } [0, 3]
c = a.sort { |a, b| b <=> a }[0, 3]
p a
p b
p c
