class MessageFormatter
  def initialize(file)
    @file = file.chomp
  end

  def split_lines
    @file.chars.each_slice(40).map(&:join)
  end
end
