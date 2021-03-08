class BrailleToEnglishFormatter
  def initialize(file)
    @file = file.chomp
    @braille = []
  end

  def join
    create_braille_letter = @file.split[0..2]
    until create_braille_letter  == [ '', '', '']
      create_braille_letter .each do |string|
        @braille << string.slice(0..1)
        string.slice!(0..1)
      end
    end
   message_size
  end

  def message_size
    if multiple_braille_characters
      @braille.each_slice(3).to_a
    else
      @file.split
    end
  end

  def count_of_braille_characters
    @file.size / 3
  end

  def multiple_braille_characters
    count_of_braille_characters > 3
  end
end
