#!/usr/bin/ruby

today = Time.now()
p today
if today.sunday?
  p "go dinner"
elsif today.saturday?
  p "go party"
else
  p "back to work"
end
