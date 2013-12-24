class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  def to_s
    "isbn: #{@isbn}, price: #{@price}"
  end
end
