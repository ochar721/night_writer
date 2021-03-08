require './test/test_helper'
class TranslateToBrailleTest < Minitest::Test
  def test_it_exists_and_has_attributes
    message = TranslateToBraille.new(["a"])
    assert_instance_of TranslateToBraille, message
  end

  def test_it_can_translate_word
    message = TranslateToBraille.new(["a"])
    expected = "0.\n..\n..\n\n"
    assert_equal expected, message.translate_message
  end

  def test_it_can_translate_a_word
    message = TranslateToBraille.new(["cat"])
    expected ="000..0\n....00\n....0.\n\n"
    assert_equal expected, message.translate_message
  end

  def test_it_a_sentance
    message = TranslateToBraille.new(["cats like toys"])
    expected ="000..0.0..0..00.0....00.00.0\n....000...0.0....0..00.0.00.\n....0.0...0...0.....0.0.000.\n\n"
    assert_equal expected, message.translate_message
  end
end
