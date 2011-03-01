require 'lib/Count'
require 'test/unit'

class TestWordCount < Test::Unit::TestCase
  include Count
  def test_case1
    assert_equal("4", count_words("How are you today?"))
    assert_equal("4", count_words("How are\n\ryou today?"))
    assert_equal("6", count_words("He doesn't feels well today"))
    assert_equal("5", count_words("Do you fell well today?"))
    assert_equal("9", count_words("Do you fell well today? \n\r No, I fell ill."))
    assert_equal("7", count_words("This line breaks seren-\n\rdipituous in two lines"))
    assert_equal("8", count_words("This line breaks seren-\n\rdipituous in two lines"))
	return
  end
end

