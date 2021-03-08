require './lib/translator_to_english'
require './lib/english_alphabet'
require './lib/braille_to_english_formatter'

created_file = File.open(ARGV[0], "r")

message = created_file.read

created_file.close

puts "Created '#{ARGV[1]}' containing #{message.size/6} characters"

braille_txt = BrailleToEnglish.new(message.downcase)
message1 = braille_txt.join
# require "pry"; binding.pry
translated_message = TranslateToEnglish.new(message1)
end_message = translated_message.translate


writer = File.open(ARGV[1], "w")

writer.write(end_message)
writer.close
