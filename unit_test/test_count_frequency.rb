require 'test/unit'
require_relative 'word_counter'

class TestCountFrequency < Test::Unit::TestCase
  def test_empty_list
    assert_equal({}, count_frequency([]))
  end

  def test_single_word_list
    assert_equal({'python' => 1}, count_frequency(['python']))
  end

  def test_multiple_word_list
    assert_equal({'python' => 2, 'fish' => 1, 'chicken' => 1}, count_frequency(['python', 'fish', 'chicken', 'python']))
  end
end
