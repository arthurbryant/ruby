require_relative 'Component'
require_relative 'Header'
require_relative 'SaleT'

test = Component.new(Header.new(SaleT.new()))
puts test
