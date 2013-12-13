require_relative 'decorator'

class Whip
  include Decorator

  def cost
    @decorator.cost + 1
  end
end
