#!/usr/bin/ruby

single_quote = %q{\a and #{1+2} are literal}
double_quote = %Q{\a and #{1+2} are literal}
array = %w[arthur bryant]
symbols = %i[ symbol1 symbol2 ]
regex = %r{.*word.*}
command = %x(df -h)

puts single_quote
puts double_quote
puts array
puts symbols
puts regex
system(command)

puts single_quote.class
puts double_quote.class
puts array.class
puts symbols.class
puts symbols[0].class
puts regex.class
puts command.class
