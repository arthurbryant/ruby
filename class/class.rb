class HI
    def initialize(name = "a")
        @name = name
    end

    def init(name = "arthur")
        puts "hello, #{name}"
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
h = HI.new("arthur")
puts h.getName
h2 = HI.new
puts h2.getName
h2.setName("bryant")
puts h2.name


class User
  attr_accessor :name, :email

  def initialize(attrs = {})
    @name = attrs[:name]
    @email = attrs[:email]
  end
end

u = User.new({ :name => "arthur", :email => "cst.feng@gmail.com" })
puts "#{u.name} #{u.email}"

def string_shuffle(s)
  s.split('').shuffle.join
end

puts string_shuffle("foobar")

class String
  def string_shuffle
    self.split('').shuffle.join
  end
end

s = String.new("shit")
puts s.string_shuffle

person = "arthur"
person2 = person.dup
person.freeze
person[0] = 'A'
puts person
puts person2
