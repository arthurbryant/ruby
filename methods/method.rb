#!/usr/bin/ruby

class TaxCal
  def initialize(amount, &block)
    @amount, @block = amount, block
  end

  def cal
    puts "Tax of #{@amount} is #{@block.call(@amount)}"
  end
end

tax = TaxCal.new(200) { |x| x * 0.17 }
tax.cal
