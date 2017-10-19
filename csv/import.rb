#!/usr/bin/env ruby

require 'csv'

def import(file_path)
    CSV.foreach(file_path, headers: true) do |row|
        puts row['name']
        puts row.to_hash
    end
end

import('/Users/feng.zhang/Desktop/test_1000.csv')
