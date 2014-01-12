#!/usr/bin/ruby

# enum object
int_enum = (1..3).to_enum
alpha_enum = ('a'..'z').to_enum
loop do
  puts "#{int_enum.next} - #{alpha_enum.next}"
end

# enum with char
result = []
'cat'.each_char.with_index{ |index, item| result << [item, index] }
p result

# enum_for
enum_in_four = (1..10).enum_for(:each_slice, 4)
p enum_in_four.to_a

