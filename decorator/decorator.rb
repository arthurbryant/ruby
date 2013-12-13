require_relative 'Component'

class Decorator
  include Component

  def initilize(component)
    @component = component
  end

  def printT
    component.printT()
  end
end
