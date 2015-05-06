
def fizz_buzz(n)
  1.upto(n) do |i|
   if i % 15 == 0
    puts "Fizzbuzz"
   elsif i % 5 == 0
    puts "Fizz"
   elsif i % 3 == 0
      puts "Buzz"
    else
      puts i
    end
  end
end

fizz_buzz(100)

# def fanxy_fizzbuzz(n)
#  (1..n).each do |i|
#    x = ''
#    x += 'Fizz' if i % 5 == 0
#    x += 'Buzz' if i % 3 == 0
#    puts (x.empty? ? i : x)
#  end
# end
