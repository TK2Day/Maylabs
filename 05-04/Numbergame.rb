def get_guess
  puts "Guess a number between 1 and 100:"
  gets.chomp.to_i
end

def number_game
  puts "Welcome to the Number Guessing Game!!!"
  number = rand(100)
  guess_count = 0
  guess = get_guess
  until guess == number
    if guess > number
      puts `clear`
      puts "Your guess was too high!"
      guess_count += 1
      puts "Your guess count:#{guess_count}"
    elsif guess < number
      puts `clear`
      puts "Your guess was too low!"
      guess_count += 1
      puts "Your guess count:#{guess_count}"
    end
    guess = get_guess
  end

  puts "You got it correct look at you!"
  puts "Would you like to play again?!? Y/N?"
  user_input = gets.chomp
  if user_input.capitalize == "Y"
    puts `clear`
    number_game
  elsif user_input.capitalize == "N"
    puts `clear`
    puts "Thanks for playing!"
   end
 end


puts "Would you like to play The Number Game? Y/N?"

user_input = gets.chomp
if user_input.capitalize == "Y"
  puts `clear`
  number_game
elsif user_input.capitalize == "N"
  puts `clear`
  puts "Thaks for playing!"
end
