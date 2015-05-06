## Write a NATO Alphabet

alphabet = {'a' => 'Able.',
            'b' => 'Baker.',
            'c' => 'Charlie.',
            'd' => 'Dog.',
            'e' => 'Easy.',
            'f' => 'Fox.',
            'g' => 'George.',
            'h' => 'How.',
            'i' => 'Item.',
            'j' => 'Jig.',
            'k' => 'King.',
            'l' => 'Love.',
            'm' => 'Mike.',
            'n' => 'Nan.',
            'o' => 'Oboe.',
            'p' => 'Peter.',
            'q' => 'Queen.',
            'r' => 'Roger.',
            's' => 'Sugar.',
            't' => 'Tare.',
            'u' => 'Uncle.',
            'v' => 'Victor.',
            'w' => 'William.',
            'x' => 'X-ray.',
            'y' => 'Yoke.',
            'z' => 'Zebra.',
            ' ' => '-'}
#
# antialphabet = { 'Able' => 'a',
#                  'Baker' => 'b',
#                  'Charlie' => 'c',
#                  'Dog' => 'd',
#                  'Easy' => 'e',
#                  'Fox' => 'f',
#                  'George' => 'g',
#                  'How' => 'h',
#                  'Item' => 'i',
#                  'Jig' => 'i',
#                  'King' => 'k',
#                  'Love' => 'l',
#                  'Mike' => 'm',
#                  'Nan' => 'n',
#                  'Oboe' => 'o',
#                  'Peter' => 'p',
#                  'Queen' => 'q',
#                  'Roger' => 'r',
#                  'Sugar' => 's',
#                  'Tare' => 't',
#                  'Uncle' => 'u',
#                  'Victor' => 'v',
#                  'William' => 'w',
#                  'X-ray' => 'x',
#                  'Yoke' => 'y',
#                  'Zebra' => 'z',
#                  ' ' => '_',
#                  '.' => '.',
#                  '!' => '!',
#                  '?' => '?'}

def message(alphabet)
  puts "Please input the Super Secret code you would like to encrypt!"
  msg = gets.chomp
  puts `clear`
  puts "Thanks! Here is your super secret code!"
  encoder(msg, alphabet)
  puts "Would you like to Reverse the code? Y/N?"
  user_input = gets.chomp.downcase
  if user_input == "y"
    decoder(msg, alphabet)
  else
    puts `clear`
    puts "We solemly swear we were up to no good!"
    puts 'The Encoder enters a blank state!'
    exit
  end
end

def encoder(message, alphabet)
  message.downcase!
  results = ""
  message.each_char do |x|
    results << alphabet[x]
  end
  puts results
end

def decoder(results, alphabet)
  original = ""
  reverse = alphabet.invert
  natoArray = results.split(".")
  # puts "Results is #{results}"
  # puts "Reverse is #{reverse}"
  natoArray.each  do |x|
    #  puts "x is #{x}"
    if reverse.has_key?(x)
      # print reverse(x)
   else
    print x
  end

end
  puts original
end

message(alphabet)
