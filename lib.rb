#!/usr/bin/ruby

$: << File.dirname('~/home/ruby/lib//')
puts $:
require_relative 'lib/test_lib.rb'
test_lib()

