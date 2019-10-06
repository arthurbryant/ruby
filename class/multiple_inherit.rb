class Cat
  @siro = "kuro"
  attr_reader :siro

  def initialize(siro="siro")
    @siro = siro
  end

  def self.kuro
    @siro
  end
end

puts Cat.new.siro
puts Cat.kuro
