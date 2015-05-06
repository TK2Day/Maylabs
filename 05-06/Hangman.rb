require 'pry'
require 'set'





word_list = ["batman", "kittens", "ruby", "beer", "legends",
             "faker", "team", "boshy", "justice", "falcon",
             "captain", "general", "hadouken" ]


turn_count = 7

guesses = Set.new
binding.pry

answer = word_list.sample

def intermediate_word(answer, guesses)
  answer.each_char do |x|
    if guesses.include(x)


    end
  end


def word_complete?(answer, guesses)
  guesses == answer.chars.to_set

end
