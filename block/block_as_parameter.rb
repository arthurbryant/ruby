#!/usr/bin/ruby

class Proc
  def store_block(&action)
    @store_block = action
  end

  def call_block(parameter)
    @store_block.call(parameter)
  end
end

obj = Proc.new {}
obj.store_block { |param| puts "This is parameter #{param}" }
obj.call_block('arthur')
