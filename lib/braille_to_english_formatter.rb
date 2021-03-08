class BrailleToEnglish
  def initialize(file)
    @file = file.chomp
  end

  # def break_down_lines
  #   array = @file.split[0..2]
  #   @file.each_slice(80)
  # end

  def join
    new = []
    array = @file.split[0..2]
    until array == [ '', '', '']
      array.each do |string|
        new  << string.slice(0..1)
        string.slice!(0..1)
      end
    end
    if multiple_characters
      new.each_slice(3).to_a
    else
      @file.split
    end
  end

  def count
    count = @file.size / 3
  end

  def multiple_characters
    count > 3
  end
end
