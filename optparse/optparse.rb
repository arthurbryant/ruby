#!/usr/bin/env ruby

require 'optparse'
opt = OptionParser.new

opt.on('-j') {|v| p "j" }
opt.on('-js') {|v| p "js" }
opt.on('--js VALUE') {|v| p v }

opt.parse!(ARGV)
p ARGV
