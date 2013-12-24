y = String.new("racecar")
puts y.methods.grep(/palindrome/)

class String
  def palindrome?
    self == self.reverse
  end
end

puts y.methods.grep(/palindrome/)
puts y.palindrome?
