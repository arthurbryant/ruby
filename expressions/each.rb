# test each
class TestEach
  include Enumerable
  def each
    yield("one", "three")
    yield("two")
  end
end

t = TestEach.new
t.each_with_index do |genre, index|
  puts "#{index}", genre.inspect
end
