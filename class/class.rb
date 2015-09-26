class HI
    def initialize(name = "a")
        @name = name
    end

    def getName
        puts @name
    end

    def setName(name)
        @name = name
    end

    def self.static_method1
      puts "static method1"
    end

    def HI.static_method2
      puts "static method2"
    end

    attr_reader :name
end

HI.static_method1
HI.static_method2

class User
  attr_accessor :name, :email

  def initialize(attrs = {})
    @name = attrs[:name]
    @email = attrs[:email]
  end
end

user = User.new({:name => "arthur", :email => "cst.feng@gmail.com"})
puts "Name: #{user.name}, Email: #{user.email}"

person = "arthur"
person_dup = person.dup
person.freeze
# Can not change freeze variable
# person[0] = 'A'
puts person, person_dup
