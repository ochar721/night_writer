require './lib/translator'
require './lib/braille'
require './lib/message_format'


created_file = File.open(ARGV[0], "r")

message = created_file.read

created_file.close

puts "Created '#{ARGV[1]}' containing #{message.size-1} characters"

braille_txt = MessageFormat.new(message.downcase)
split_message = braille_txt.split_lines
translated_message = Translator.new(split_message)
end_message = translated_message.translate_message

writer = File.open(ARGV[1], "w")

writer.write(end_message)
writer.close
