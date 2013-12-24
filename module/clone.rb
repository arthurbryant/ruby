class Test
  def self.hello
    puts "test #{self}"
  end
end

m = Test.dup
#m.hello
c = Test.clone
c.hello
