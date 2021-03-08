require './test/test_helper'
class TranslateToEnglishTest < Minitest::Test
  def test_it_exists_and_has_attributes
    braille_character = TranslateToEnglish.new(["0.", "..", ".."])
    assert_instance_of TranslateToEnglish,  braille_character
  end

  def test_it_can_convert_to_english
    braille_character = TranslateToEnglish.new(["0.", "..",  ".."])
    assert_equal ["a"], braille_character.translate
  end

  def test_it_can_convert_multiple_letter_english
    braille_character = TranslateToEnglish.new([['..', '..', '..'], ['.0', '0.', '..'], ['0.', '00', '..']])
    assert_equal " ih", braille_character.translate
  end
end
