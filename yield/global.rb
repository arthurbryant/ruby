class Book
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

def fun(book)
  puts 'start fun'
  yield book
  puts 'end fun'
end

global_var = nil
puts global_var
book = Book.new("Ruby")
fun(book) {|b| global_var = book.name}
puts global_var
