#!/usr/bin/env ruby

require 'csv'

def headers(path)
  data = CSV.read(path, col_sep: "\t", headers: true)
  p data.headers.empty?
  p data.headers.is_a?(Array)
  p data.headers.include?('name')
  p "-------"
end
