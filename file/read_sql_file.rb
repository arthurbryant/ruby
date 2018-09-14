#!/usr/bin/env ruby

require 'awesome_print'

queries = File.open(ARGV[0], 'rb') { |f| f.read }

queries = queries.split(/;/)
queries.pop if queries[-1] =~ /^\s+$/

ap queries
