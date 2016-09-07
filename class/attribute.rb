class Test
  attr_accessor :id

  def initialize(id=nil)
    @id = id
  end
end

t= Test.new(200)
p t.id
