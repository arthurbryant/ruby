module User

  module ClassMethods
    def get
      return "arthur"
    end
  end

end

module Admin
  def get
    return "admin"
  end
end

class Test
  include Admin
  include User

  def show
    puts get
    puts User::ClassMethods::get
  end
end

t = Test.new
t.show
