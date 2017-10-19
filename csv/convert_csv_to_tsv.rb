#!/usr/bin/env ruby

require 'csv'

def convert
   File.open('data.tsv', 'w+') do |f|
    line = CSV.parse(File.read('data.csv')).map {|row| row.join("\t")}.join("\n")
    f << line
   end
end

convert
