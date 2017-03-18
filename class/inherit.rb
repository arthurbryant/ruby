class Parent
    attr_reader :name

    def initialize(name = "a")
        @name = name
    end

  private
    def private_method
      puts "call private method"
    end
end

class Child < Parent
  attr_accessor :name, :email

  def initialize(attrs = {})
    @name = attrs[:name]
    @email = attrs[:email]
  end
end

user = Child.new({:name => "arthur", :email => "cst.feng@gmail.com"})
user.private_method

