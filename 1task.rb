# задание 1
# Напишите программу, которая спрашивает у человека имя, затем отчество, затем
# фамилию. В результате она должна поприветствовать человека, называя его полным
# именем.

#!/usr/bin/env ruby

class Greeter
  attr_accessor :surnames
  attr_accessor :names
  attr_accessor :middlenames

  def initialize(surnames = "World", names = "World", middlenames = "World")
    @surnames = surnames
    @names = names
    @middlenames = middlenames
  end

  def say_hi
    if @names == "World" or @surnames == "World" or @middlenames == "World" 
      puts "Please enter your full name"
      puts "Enter your surname:"
      @surnames = gets.chomp
      puts "Enter your name:"
      @names = gets.chomp
      puts "Enter your middle name:"
      @middlenames = gets.chomp
      puts "Hello #{@surnames.capitalize} #{@names.capitalize} #{@middlenames.capitalize}!"
    else
      puts "Hello #{@surnames.capitalize} #{@names.capitalize} #{@middlenames.capitalize}!"
    end
  end
end

if __FILE__ == $0
  gr = Greeter.new
  gr.say_hi
end

