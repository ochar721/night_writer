require './lib/message_formatter'
require './lib/braille_alphabet'
class TranslateToBraille
  include BrailleAlphabet

  def initialize(split_messages)
    @split_messages = split_messages
    @braille = ""
  end

  def translate_message
    @split_messages.each do |split_message|
    3.times do |index|
        split_message.chars.each do |character|
          message += alphabet[character][index]
        end
        message += "\n"
      end
     message += "\n"
    end
    message
  end
end
