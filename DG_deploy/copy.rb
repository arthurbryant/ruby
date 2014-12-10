#!/usr/bin/ruby

# set config files
Dir.glob("*.sample") do |f|
  data = /(.*\.yml)\.sample/.match(f)
  if data
    new_filename = data[1]
    puts new_filename
    %x(cp #{new_filename}.sample #{new_filename})
  end
  puts f.inspect
end
