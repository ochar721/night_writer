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
final_message = translated_message.translate

writer = File.open(ARGV[1], "w")

writer.write(final_message)
writer.close
