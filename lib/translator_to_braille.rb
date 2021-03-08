require './lib/message_formatter'
require './lib/braille_alphabet'

class TranslateToBraille
  include BrailleAlphabet

  def initialize(split_messages)
<<<<<<< HEAD
    @split_messages = split_messages
    @braille = ""
  end

  def translate_message
    @split_messages.each do |split_message|
=======
    @split_messages     = split_messages
    @translated_message = ""
  end

  def translate_message
    @split_messages.each do |letter|
        @translated_message << braille_creater(letter)
        @translated_message += "\n"
      end
    @translated_message
  end

  def braille_creater(letter)
>>>>>>> 910d09cc661ea580c9a3dee2b4716490f21be009
    3.times do |index|
      letter.chars.each do |character|
        @translated_message += alphabet[character][index]
        end
      @translated_message += "\n"
    end
  end
end
