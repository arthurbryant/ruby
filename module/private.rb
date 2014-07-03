module Paper
  def base
    puts "paper"
  end

  protected
    def protected_test
      puts "protected function"
    end

  private
    def privaet_test
      puts "private function"
    end
end

class Book
  include Paper
end

book = Book.new
book.base
book.protected_test
book.privaet_test
