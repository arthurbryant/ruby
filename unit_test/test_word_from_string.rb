require 'test/unit'
require_relative 'word_counter'

class TestWordFromString < Test::Unit::TestCase
  def test_empty_string
    assert_equal([], word_from_string(""))
    assert_equal([], word_from_string("      "))
  end

  def test_single_word
    assert_equal(['cat'], word_from_string("cat"))
    assert_equal(['horse'], word_from_string("   horse   "))
  end

  def test_multiple_word
    assert_equal(['cat', 'monkey', 'pig'], word_from_string("cat monkey pig"))
  end

  def test_ignore_punctuation
    assert_equal(['elephant', 'lion', 'tiger'], word_from_string('   <!elephant, lion"" &%$tiger) '))
  end
end
