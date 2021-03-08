require './test/test_helper'
class TranslatorTest < Minitest::Test
  def test_it_exists_and_has_attributes
    message = Translator.new(["a"])
    assert_instance_of Translator, message
  end
end
