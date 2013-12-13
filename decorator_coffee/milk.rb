require_relative 'decorator'

class Milk
  include Decorator

  def cost
    @decorator.cost + 0.5
  end
end
