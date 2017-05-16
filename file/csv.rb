#!/usr/bin/ruby

require 'csv'

CSV.foreach("/Users/feng.zhang/Desktop/suntory.csv", {headers: true}) do |row|
p row
      name    = row[1]
      address = row[2]
      lat     = row[3]
      lng     = row[4]
      polygon = row[5]
end
