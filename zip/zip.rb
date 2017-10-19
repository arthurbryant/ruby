#!/usr/bin/env ruby

require 'zlib'

orig = "t.tsv"
Zlib::GzipWriter.open("data.tsv.gz") do |gz|
  gz.mtime = File.mtime(orig)
  gz.orig_name = orig
  gz.write IO.binread(orig)
  puts gz.mtime
  puts gz.orig_name
end

Zlib::GzipReader.open("data.tsv.gz") do |gz|
  puts gz.read
end
