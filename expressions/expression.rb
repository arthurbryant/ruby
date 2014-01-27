#!/usr/bin/ruby

class Score
  attr_reader :total_score, :count

  def initialize(total, count)
    @total_score, @count = total, count
  end

  def <<(score)
    @total_score += score
    @count += 1
    self
  end
end

score = Score.new(0, 0)
score << 20 << 10 << 100
print score.total_score, " ", score.count

puts 
# scope
y = "ok"
(1..10).each do |v|
  y = v + 1
end
puts y
