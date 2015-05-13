class Coffee

 def initialize(coffeetype)
   @coffeetype = coffeetype
   @fullness = 3

 end



 def coffeetype
   @coffeetype
 end




 def full?
   @fullness == 3
 end

def empty?
 @fullness == 0
end

def drink_coffee
  @fullness -= 1
end

#
# def full
#  false
# end
#
# def empty
#  flase
# end




end
