class BrailleToEnglishFormatter
  def initialize(file)
    @file = file.chomp
    @braille = []
  end

  def join
    array = @file.split[0..2]
    until array == [ '', '', '']
      array.each do |string|
        @braille << string.slice(0..1)
        string.slice!(0..1)
        end
      end
    message_size
  end

  def message_size
    if multiple_characters
      @braille.each_slice(3).to_a
    else
      @file.split
    end
  end

  def count_of_braille_characters
    count = @file.size / 3
  end

  def multiple_characters
    count_of_braille_characters > 3
  end
end
