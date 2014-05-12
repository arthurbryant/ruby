module User
  def get
    return "arthur"
  end
end

module Admin
  def get
    return "admin"
  end
end

class TestUser
  include Admin
  include User

  def show
    puts get
  end
end

class TestAdmin
  include User
  include Admin

  def show
    puts get
  end
end


# the later included module will override same name method of modules included before!
puts "later include user"
tau = TestUser.new
tau.show
puts "\n"

puts "later include admin"
tua = TestAdmin.new
tua.show
