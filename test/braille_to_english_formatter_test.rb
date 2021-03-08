require './test/test_helper'
class BrailleToEnglishTest < Minitest::Test
  def test_it_exists_and_has_attributes
    braille_format = BrailleToEnglish.new("0.\n00\n..\n\n")
    assert_instance_of BrailleToEnglish, braille_format
  end

  def test_it_can_rejoin_letters
    braille_format = BrailleToEnglish.new("0.\n00\n..\n\n")
    assert_equal ["0.", "00", ".."], braille_format.join
  end

  def test_it_can_join_multiple_letters
    braille_format = BrailleToEnglish.new("0..0\n000.\n....")
    expected = [['0.', '00', '..'] ,['.0', '0.', '..']]
    assert_equal expected, braille_format.join
end
end
