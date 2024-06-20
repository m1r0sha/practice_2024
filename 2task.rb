# задание 2
# Напишите программу, которая спрашивает у человека его любимое число. Пусть
# ваша программа прибавит единицу к этому числу, а затем предложит результат в
# качестве большего и лучшего любимого числа. (Однако будьте при этом тактичными.)

#!/usr/bin/env ruby

class Numbers
  attr_accessor :numbers

  def initialize(numbers = 1)
    @numbers = numbers
  end

  def favourite_number
      puts "Please enter your favourite number"
      @numbers = gets.chomp.to_i
      puts "Maybe this number will be your favourite #{@numbers + 1}?"
  end
end

if __FILE__ == $0
  nm = Numbers.new
  nm.favourite_number
end


