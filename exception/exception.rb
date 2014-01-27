#!/usr/bin/ruby

require 'open-uri'

begin
  page = 'herokuapp.html'
  html_file = open("httpss://still-ridge-4477.herokuapp.com/", 'r')
  output = File.open(page, 'w')
  while line = html_file.gets
    output.puts line
  end
  output.close

  File.foreach(page) do |l|
    puts l
  end
rescue Exception => e
  STDERR.puts "Can not donwload #{page}: #{$!}"
  puts e.message
  puts e.backtrace.join('\n')
  output.close
  File.delete(page)
  raise
end

