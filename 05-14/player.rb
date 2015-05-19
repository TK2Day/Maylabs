require 'pry'


class Human

def initialize(character)
  @character = character

end



def choose_move(open_space)
  #do you need @character here?
  #pick a spot on the array 1-9 and rewrite it with their characater
  puts "Choose an open space (1-9)!"
  @input = gets.chomp.to_i
  until open_space.include? @input
    puts "Please enter a vaild space!"
    puts "Please enter an AVALIBLE space (1-9)"
    @input = gets.chomp.to_i
  end
  @input -1
end

binding.pry



end



end
