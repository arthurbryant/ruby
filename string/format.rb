#!/usr/bin/env ruby

require 'FileUtils'

output = '[%s]' % 'same old drag'
FileUtils.mkdir_p "test"
FileUtils.rm_r "test"

puts 235.modulo(3)
puts Array(:hello => "world").inspect
puts Array(hello: :world).inspect
puts output
