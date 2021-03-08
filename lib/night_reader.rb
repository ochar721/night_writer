require './lib/translator_to_english'
require './lib/english_alphabet'
require './lib/braille_to_english_formatter'

created_file = File.open(ARGV[0], "r")

message = created_file.read

created_file.close

puts "Created '#{ARGV[1]}' containing #{(message.size-1)*6} characters"

braille_txt = BrailleToEnglishFormatter.new(message.downcase)
message1 = braille_txt.join
translated_message = TranslateToEnglish.new(message1)
end_message = translated_message.translate

braille_message = BrailleToEnglish.new(message.downcase)
joined_message = braille_message.join

writer = File.open(ARGV[1], "w")

writer.write(returned_english)
writer.close
