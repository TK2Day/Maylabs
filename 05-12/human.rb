require './coffee'

class Human

 def initialize(name)
   @name = name
   @alertness = 0.0
   @coffee = nil


 end

 def name
   @name
 end

 def alertness
   @alertness
 end

 def has_coffee?
   false
 end

def needs_coffee?
  true
end

def buy(coffee)
 @drink = coffee
 @coffee = coffee

end

def drink!
 @alertness += 0.321
 @coffee.drink_coffee
end

end
