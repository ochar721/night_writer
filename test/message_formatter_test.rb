require './test/test_helper'
class MessageFormatterTest < Minitest::Test
  def test_it_exists_and_has_attributes
    message_format = MessageFormatter.new("I like cats")
    assert_instance_of MessageFormatter, message_format
  end

  def test_it_can_split_lines
    message_format = MessageFormatter.new("I like cats")
    assert_equal ["I like cats"], message_format.split_lines
  end

  def test_it_can_split_lines_with_over_40_characters
    message_format= MessageFormatter.new("I like cats and they are all so cute and amazing with small noses")

    expected = ["I like cats and they are all so cute and", " amazing with small noses"]

    assert_equal expected, message_format.split_lines
  end

  def test_it_can_test_split_lines_with_over_80_characters
    message_format2 = MessageFormatter.new("I like cats and they are all so cute and amazing with small noses cute little deadly claws and tails that are so swishy")

    expected = ["I like cats and they are all so cute and", " amazing with small noses cute little de", "adly claws and tails that are so swishy"]

    assert_equal expected, message_format2.split_lines
  end
end
