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

    attr_reader :name
end

h = HI.new("arthur")
puts h.getName
h2 = HI.new
puts h2.getName
h2.setName("bryant")
puts h2.name
