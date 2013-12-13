module Decorator
  def initialize(decorator)
    @decorator = decorator
  end

  def method_missing(method, *args)
    args.empty? ? @decorator.send(method) : @decorator.send(method, args)
  end
end
