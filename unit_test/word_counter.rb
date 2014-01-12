#!/usr/bin/ruby

def word_from_string(str_array)
  str_array.downcase.scan(/[\w']+/)
end

def count_frequency(str_array)
  counts = Hash.new(0)
  str_array.each do |word|
    counts[word] += 1
  end
  counts
end

str = "We can arrange to display the contents of the flash site-wide by including it in our application layout, as in Listing 7.27. (This code is a particularly ugly combination of HTML and ERb; an exercise in Section 7.6 shows how to make it prettier.)"
str_hash = word_from_string(str)
counts = count_frequency(str_hash)
sorted = counts.sort_by {|word, count| count}
top_five = sorted.last(5)
top_five.each do |word, count|
  puts "#{word} => #{count}"
end
