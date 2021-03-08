require './lib/english_alphabet'

class TranslateToEnglish
  include EnglishAlphabet

  def initialize(messages)
    @messages = messages
  end

  def translate_multiple
    english = []
     @messages.map do |message|
       alphabet.each do |braille, english_letter|
       if message == braille
         english << english_letter
       end
     end
   end
   english.join
  end

def translate_single
  characters = []
  alphabet.map do |braille, letter|
   if @messages == braille
   characters << letter
    end
    end
    characters
  end

  def translate
    if multi_character
      translate_multiple
    else
      single_character
      translate_single
    end
  end

  def multi_character
  count =  (@messages.flatten).size
  count > 3
  end

  def single_character
    (@messages.flatten).size == 3
  end
end
