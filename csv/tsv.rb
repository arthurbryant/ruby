#!/usr/bin/env ruby

require 'csv'

def create
    rows = []
    rows << ['place_id', 'name', 'address', 'radius'].join("\t")
    index = 0
    CSV.foreach('./data.tsv', col_sep: "\t", headers: true) do |row|
      puts row
      puts row['name']
      puts row['address']
      if row['name'] && row['address'] && row['radius']
        index += 1
        rows << [index, row['name'], row['address'], row['radius']].join("\t")
      end
    end
    content = rows.join("\n")
 
    File.open('new-data.tsv', 'w+') do |f|
      f.write(content)
    end
end
