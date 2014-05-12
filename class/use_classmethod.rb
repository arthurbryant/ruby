module User
  #def self.included(base)
  #  base.extend ClassMethods
  #end

  module ClassMethods
    def get
      return "arthur"
    end
  end

  extend ClassMethods
end

class Test
  #include User

  #def self.show
  #  puts get
  #end

  def show2
    puts User::get
  end
end

# try to use class method in module's ClassMethod module
Test.show
t = Test.new
t.show2
