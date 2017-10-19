#!/usr/bin/env ruby

require_relative './header'

headers('./empty.tsv')
headers('./no_header.tsv')
headers('./new-data.tsv')
headers('./invalid_headers.tsv')
