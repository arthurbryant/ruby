#!/usr/bin/env ruby

require 'date'

start_at = DateTime.new(2017, 1, 1)
end_at   = DateTime.new(2018, 12, 31)

(start_at..end_at).each do |dt|
  puts dt.strftime("%Y-%m-%d")
end

# .. inclues the border
size_with_border = (start_at..end_at).to_a.size
puts size_with_border

# ... does not inclue the border
size_without_border = (start_at...end_at).to_a.size
puts size_without_border
