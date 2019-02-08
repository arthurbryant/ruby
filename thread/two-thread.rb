#!/usr/bin/env ruby

t1 = Thread.new { puts "a"; puts "b"; sleep(0.1); puts "c" }
t2 = Thread.new { puts "x"; sleep(0.2); puts "y"; puts "z" }
t1.join
t2.join
