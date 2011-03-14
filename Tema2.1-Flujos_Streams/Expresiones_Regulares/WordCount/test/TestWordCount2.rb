require 'lib/Count2'
require 'test/unit'

class TestWordCount2 < Test::Unit::TestCase

  def test_case2
    assert_equal("4", Count.count_words("How are you today?"))
    assert_equal("4", Count.count_words("How are\n\ryou today?"))
    assert_equal("6", Count.count_words("He doesn't feels well today"))
    assert_equal("5", Count.count_words("Do you fell well today?"))
    assert_equal("9", Count.count_words("Do you fell well today? \n\r No, I fell ill."))
    assert_equal("7", Count.count_words("This line breaks seren-\n\rdipituous in two lines"))
    assert_equal("8", Count.count_words("This line breaks seren-\n\rdipituous in two lines"))
	return
  end
end

