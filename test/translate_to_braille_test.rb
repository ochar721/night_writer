require './test/test_helper'
class TranslatorTest < Minitest::Test
  def test_it_exists_and_has_attributes
    message = Translator.new(["a"])
    assert_instance_of Translator, message
  end

  def test_it_can_translate_word
    message = Translator.new(["a"])
    expected = "0.\n..\n..\n\n"
    assert_equal expected, message.translate_message
  end

  def test_it_can_translate_a_word
    message = Translator.new(["cat"])
    expected ="000..0\n....00\n....0.\n\n"
    assert_equal expected, message.translate_message
  end

  def test_it_a_sentance
    message = Translator.new(["cats like toys"])
    expected ="000..0.0..0..00.0....00.00.0\n....000...0.0....0..00.0.00.\n....0.0...0...0.....0.0.000.\n\n"
    assert_equal expected, message.translate_message
  end
end
