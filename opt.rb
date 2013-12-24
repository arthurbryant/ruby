#!/usr/bin/ruby

require 'optparse'

parser =
  OptionParser.new do |args|
    flag = false
    args.def_head_option('-f') do |f|
      flag = f
    end

    if flag
      args.on('-f filename') do |filename|
        puts filename
      end
    end
  end
parser.parse!(ARGV)
