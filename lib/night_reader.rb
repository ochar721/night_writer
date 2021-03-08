require './lib/translator_to_braille'
require './lib/braille_alphabet'
require './lib/message_formatter'
# require './lib/english_translator'


created_file = File.open(ARGV[0], "r")

message = created_file.read

created_file.close

puts "Created '#{ARGV[1]}' containing #{message.size-1} characters"

braille_txt = EnglishTranslator.new(message.downcase)
message1 = braille_txt.translate
translated_message = BrailleFormat.new(message1)
end_message = translated_message.join


writer = File.open(ARGV[1], "w")

writer.write(end_message)
writer.close
