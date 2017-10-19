#!/usr/bin/env ruby

require 'csv'
require 'nkf'

filename = "mm.tsv"


File.open(filename, 'r') do |f|
  content = NKF.nkf('-w -Lu', f.read)
  p content
  File.open('result.tsv', 'w+') {|nf| nf.write(content)}
end
