require 'csv'
require_relative 'book_in_stock'

class CSVReader
  def initialize
    @books = []
  end

  def read_in_csv_data(csv_file)
    CSV.foreach(csv_file, headers: true) do |row|
      @books << BookInStock.new(row['isbn'], row['price'])
    end
  end

  def total_value_in_stock
    sum = 0.0
    @books.each { |book| sum += book.price }
    return sum
  end
end
