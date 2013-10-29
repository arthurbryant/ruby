#!/usr/bin/ruby

html = ""
html << "<h1>Page title</h1>\n"
params = %w(page1 page2)
params.each do |p|
  html << "<p>#{p}</p>\n"
end
puts html
