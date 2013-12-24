#!/usr/bin/ruby

require 'optparse'

filename = ''
begin
  OptionParser.new do |opts|
   opts.banner = "Usage: example.rb [options]"

    opts.def_head_option('-f') do |f|
      puts opts
    end
    opts.on("-f filename") do |f|
      filename = f
      #puts f
    end
  end.parse!
  rescue OptionParser::MissingArgument
    puts "Usage: ios devices:add [-f filename] device_name=device_udid"
end
