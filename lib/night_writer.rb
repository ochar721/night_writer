require './lib/translator_to_braille'
require './lib/braille_alphabet'
require './lib/message_formatter'

created_file = File.open(ARGV[0], "r")

message = created_file.read

created_file.close

puts "Created '#{ARGV[1]}' containing #{message.size-1} characters"

formatted = MessageFormatter.new(message.downcase)
english_message = formatted.split_lines
translated_message = TranslateToBraille.new(english_message)
final_message = translated_message.translate_message

writer = File.open(ARGV[1], "w")

writer.write(final_message)
writer.close
