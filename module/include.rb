module M
  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      scope :disabled, -> { where(disabled: true) }
    end
  end

  module ClassMethods
    def class_method
      puts "class method"
    end
  end
end

class Foo
  include M
end

f = Foo.new
p f
